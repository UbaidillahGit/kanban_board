part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.started() = _Started;

  const factory TaskEvent.reqSetBoardName(String boardName) = ReqSetBoardName;

  const factory TaskEvent.reqOnChangedTaskName(String taskName) = ReqOnChangedTaskName;

  const factory TaskEvent.reqOnChangedTaskDescription(String taskDescription) = ReqOnChangedTaskDescription;

  const factory TaskEvent.reqListCollaborator() = ReqListCollaborator;

  const factory TaskEvent.reqSelectLabel(String labelId) = ReqSelectLabel;

  const factory TaskEvent.reqSelectAssignee(CollaboratorEntities collaboratorEntities) = ReqSelectAssignee;

  const factory TaskEvent.reqCreateTask() = ReqCreateTask;

  const factory TaskEvent.reqEditTask(int taskIdx, TaskEntities taskEntities) = ReqEditTask;

  const factory TaskEvent.reqUpdateTask() = ReqUpdateTask;

  const factory TaskEvent.reqDeleteTask() = ReqDeleteTask;
}