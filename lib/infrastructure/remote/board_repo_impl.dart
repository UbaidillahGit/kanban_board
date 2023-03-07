
import 'dart:convert';
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/domain/board/board_repo.dart';
import 'package:kanban_board/domain/board/failure/failure.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/infrastructure/core/firestore_helper.dart';
import 'package:kanban_board/infrastructure/local/secure_storage.dart';


///__________ This repo handle any of 'board' and 'task' data-remote
///
@LazySingleton(as: BoardRepository)
class BoardRepositoryImplement implements BoardRepository {
  BoardRepositoryImplement(this._firestore, this.secureStorageRepository);

  final FirebaseFirestore _firestore;
   final SecureStorageRepository secureStorageRepository;


  @override
  Future<Either<BoardFailure, Unit>> updateBoardGroup(String boardName, BoardEntities boardEntities) async {
    try {
      log('projects ${await secureStorageRepository.getCurrentOpenedProject()}');
      final projectsId = await secureStorageRepository.getCurrentOpenedProject();

      final collection = _firestore.projectsCollection();

      final updateParam = {boardName: json.decode(json.encode(boardEntities))};
      log('boardUpdate $updateParam');
      // await collection.doc(projectsId).update(updateParam);
    } on FirebaseException catch (e) {
      log('updateBoardGroup Catch ${e.message}');
      // return left(unit);
    }
    return right(unit);
  }

  @override
  Future<Either<BoardFailure, Unit>> updateTask(String boardId, int taskIdx, TaskEntities taskEntities) async {
    try {
      final projectsId = await secureStorageRepository.getCurrentOpenedProject();

      final collection = _firestore.projectsCollection();
      // final decodedTask = json.decode(json.encode(taskEntities));

      // final singleUpdate = {
      //   '$boardId.tasks': FieldValue.arrayUnion([decodedTask])
      // };

      // log('decodedTask ${taskEntities.toJson()}');

      // await collection.doc(projectsId).update(singleUpdate);
      _firestore.runTransaction(
        (transaction) async {
          DocumentSnapshot snapshot = await transaction.get(collection.doc(projectsId));
          if (snapshot.exists) {
            final data = snapshot.data();
            if (data != null) {
              final projecEntities = ProjectEntities.fromJson(json.decode(json.encode(data)));
              // late TaskEntities taskList;

              if (boardId == 'to_do') {
                projecEntities.toDo!.tasks![taskIdx] = taskEntities;
              } else if (boardId == 'in_progress') {
                projecEntities.inProgress!.tasks![taskIdx] = taskEntities;
              } else if (boardId == 'done') {
                projecEntities.done!.tasks![taskIdx] = taskEntities;
              }

              // log('snapshot ${projecEntities.toDo?.tasks}');
              transaction.update(collection.doc(projectsId), json.decode(json.encode(projecEntities)));
            }
          }
        },
      );

      return right(unit);
    } catch (e) {
      return left(BoardFailure.failToUpdate());
    }
  }

  @override
  Future<Either<BoardFailure, Unit>> taskMove(
    String boardOrigin,
    String boardDestination,
    TaskEntities currentTaskEntities,
    TaskEntities movedTaskEntities,
  ) async {
    try {
      final projectsId = await secureStorageRepository.getCurrentOpenedProject();

      final collection = _firestore.projectsCollection();
      final decodedRemoveTask = json.decode(json.encode(currentTaskEntities));
      final decodedUpdateTask = json.decode(json.encode(movedTaskEntities));

      final multipleUpdate = {
        '$boardOrigin.tasks': FieldValue.arrayRemove([decodedRemoveTask]),
        '$boardDestination.tasks': FieldValue.arrayUnion([decodedUpdateTask]),
      };

      await collection.doc(projectsId).update(multipleUpdate);

      return right(unit);
    } on FirebaseException catch (e) {
      return left(BoardFailure.failToUpdate());
    }
  }

  @override
  Future<Either<BoardFailure, Unit>> createTask(String boardName, TaskEntities taskEntities) async {
    final projectsId = await secureStorageRepository.getCurrentOpenedProject();
    final collection = _firestore.projectsCollection();

    final decoded = json.decode(json.encode(taskEntities));

    final updateParam = {
      '$boardName.tasks': FieldValue.arrayUnion([decoded])
    };

    await collection.doc(projectsId).update(updateParam).onError((error, stackTrace) {
      log('onError $error | $stackTrace');
      left(BoardFailure.failToUpdate());
    }).then((value) {
      log('success $projectsId $updateParam');
    });

    return right(unit);
  }

   @override
  Future<Either<BoardFailure, Unit>> deleteTask(TaskEntities taskEntities) async {
    final projectsId = await secureStorageRepository.getCurrentOpenedProject();
    final collection = _firestore.projectsCollection();

    final decoded = json.decode(json.encode(taskEntities));

    final updateParam = {
      '${taskEntities.currentBoard}.tasks': FieldValue.arrayRemove([decoded])
    };

    log('deleteTask $updateParam');

    await collection.doc(projectsId).update(updateParam).then((value) {
      log('success');
    });

    // await collection.doc(projectsId).update(updateParam).onError((error, stackTrace) {
    //   log('onError $error | $stackTrace');
    //   left(BoardFailure.failToUpdate());
    // }).then((value) {
    //   log('success $projectsId $updateParam');
    // });

    return right(unit);
  }
}
