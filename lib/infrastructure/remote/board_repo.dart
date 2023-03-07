
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/domain/board/failure/failure.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/infrastructure/core/firestore_helper.dart';
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart';

///__________ This repo handle any of 'board' and 'task' data-remote
///
abstract class BoardRepository {

  Future<Either<BoardFailure, Unit>> updateTask(String boardId, int taskIdx, TaskEntities currentTaskEntities);

  Future<Either<BoardFailure, Unit>> taskMove(String boardOrigin, String boardDestination, TaskEntities currentTaskEntities, TaskEntities movedTaskEntities);

  Future<Either<BoardFailure, Unit>> createTask(String boardName, TaskEntities taskEntities);

  Future<Either<BoardFailure, Unit>> deleteTask(TaskEntities taskEntities);
}


@LazySingleton(as: BoardRepository)
class BoardRepositoryImplement implements BoardRepository {
  BoardRepositoryImplement(this._firestore, this.secureStorageRepository);

  final FirebaseFirestore _firestore;
  final SecureStorageRepository secureStorageRepository;

  @override
  Future<Either<BoardFailure, Unit>> updateTask(String boardId, int taskIdx, TaskEntities taskEntities) async {
    try {
      final projectsId = await secureStorageRepository.getCurrentOpenedProject();

      final collection = _firestore.projectsCollection();

      _firestore.runTransaction(
        (transaction) async {
          DocumentSnapshot snapshot = await transaction.get(collection.doc(projectsId));
          if (snapshot.exists) {
            final data = snapshot.data();
            if (data != null) {
              final projecEntities = ProjectEntities.fromJson(json.decode(json.encode(data)));

              if (boardId == 'to_do') {
                projecEntities.toDo!.tasks![taskIdx] = taskEntities;
              } else if (boardId == 'in_progress') {
                projecEntities.inProgress!.tasks![taskIdx] = taskEntities;
              } else if (boardId == 'done') {
                projecEntities.done!.tasks![taskIdx] = taskEntities;
              }

              transaction.update(
                collection.doc(projectsId),
                json.decode(json.encode(projecEntities)),
              );
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
    } on FirebaseException {
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
      left(BoardFailure.failToUpdate());
    }).then((value) {});

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


    await collection.doc(projectsId).update(updateParam).onError((error, stackTrace) {
      left(BoardFailure.failToUpdate());
    }).then((value) {});

    return right(unit);
  }
}
