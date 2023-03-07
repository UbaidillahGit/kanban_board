part of 'task_bloc.dart';

enum EnumTaskState {initial, err, resCreateTask, resListCollaborator, resEditTask, resUpdateTask, resDeleteTask}

@freezed
class TaskState extends Equatable with _$TaskState {
  TaskState._();

  factory TaskState({
    required EnumTaskState enumTaskState,
    required String boardName,
    required TextEditingController taskName,
    required TextEditingController taskDescription,
    required String labelId,
    required List<CollaboratorEntities> listCollaborator,
    required String emailAssignee,
    required String? errMsg,
    required int? taskIdx
  }) = _TaskState;

  factory TaskState.initial() => TaskState(
        enumTaskState: EnumTaskState.initial,
        boardName: '',
        taskName: TextEditingController.fromValue(const TextEditingValue(text: 'Example Task',)),
        taskDescription: TextEditingController.fromValue(const TextEditingValue(text: 'Example Description',)),
        labelId: '',
        listCollaborator: const <CollaboratorEntities>[],
        emailAssignee: '',
        errMsg: '',
        taskIdx: null
      );
      
  @override
  List<Object?> get props => [
    enumTaskState,
    boardName,
    taskName,
    taskDescription,
    labelId,
    listCollaborator,
    emailAssignee,
    errMsg,
    taskIdx,
    identityHashCode(this)
  ];
}
