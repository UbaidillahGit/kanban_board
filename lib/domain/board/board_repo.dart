import 'package:fpdart/fpdart.dart';
import 'package:kanban_board/domain/board/failure/failure.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';

abstract class BoardRepository {
  Future<Either<BoardFailure, Unit>> updateBoardGroup(String boardName, BoardEntities boardEntities);

  Future<Either<BoardFailure, Unit>> updateTask(String boardId, int taskIdx, TaskEntities currentTaskEntities);

  Future<Either<BoardFailure, Unit>> taskMove(String boardOrigin, String boardDestination, TaskEntities currentTaskEntities, TaskEntities movedTaskEntities);

  Future<Either<BoardFailure, Unit>> createTask(String boardName, TaskEntities taskEntities);

   Future<Either<BoardFailure, Unit>> deleteTask(TaskEntities taskEntities);
}