import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/domain/board/board_repo.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/domain/projects/projects_repo.dart';
import 'package:kanban_board/infrastructure/local/secure_storage.dart';

part 'task_bloc.freezed.dart';
part 'task_event.dart';
part 'task_state.dart';

@Injectable()
class TaskBloc extends Bloc<TaskEvent, TaskState> {
  final ProjectsRepository projectsRepository;
  final BoardRepository boardRepository;
   final SecureStorageRepository secureStorageRepository;

  TaskBloc(this.projectsRepository, this.boardRepository, this.secureStorageRepository) : super(TaskState.initial()) {
    on<TaskEvent>((event, emit) {});

    on<ReqSetBoardName>(_onReqSetBoardName);

    on<ReqOnChangedTaskName>(_onReqOnChangedTaskName);

    on<ReqOnChangedTaskDescription>(_onReqOnChangedTaskDescription);

    on<ReqListCollaborator>(_onReqListCollaborator);

    on<ReqSelectLabel>(_onReqSelectLabel);

    on<ReqSelectAssignee>(_onReqSelectAssignee);

    on<ReqCreateTask>(_onReqCreateTask);

    on<ReqEditTask>(_onReqEditTask);

    on<ReqUpdateTask>(_onReqUpdateTask);

    on<ReqDeleteTask>(_onReqDeleteTask);
  }

  void _onReqSetBoardName(ReqSetBoardName event, Emitter<TaskState> emit) async {
    emit(
      state.copyWith(boardName: event.boardName),
    );
  }

  void _onReqOnChangedTaskName(ReqOnChangedTaskName event, Emitter<TaskState> emit) async {
    emit(
      
      state.copyWith(
        taskName: TextEditingController.fromValue(
          TextEditingValue(
            text: event.taskName,
            selection: TextSelection.collapsed(offset: state.taskName.selection.baseOffset),
          ),
        ),
        enumTaskState: EnumTaskState.initial,
        taskIdx: state.taskIdx,
        taskDescription: state.taskDescription,
        listCollaborator: state.listCollaborator,
        labelId: state.labelId,
        emailAssignee: state.emailAssignee,
      ),
    );
  }

  void _onReqOnChangedTaskDescription(ReqOnChangedTaskDescription event, Emitter<TaskState> emit) async {
    emit(
      state.copyWith(
        enumTaskState: EnumTaskState.initial,
        taskIdx: state.taskIdx,
        taskName: state.taskName,
        taskDescription: TextEditingController.fromValue(
          TextEditingValue(
            text: event.taskDescription,
            selection: TextSelection.collapsed(offset: state.taskDescription.selection.baseOffset),
          ),
        ),
        listCollaborator: state.listCollaborator,
        labelId: state.labelId,
        emailAssignee: state.emailAssignee,
      ),
    );
  }

  void _onReqListCollaborator(ReqListCollaborator event, Emitter<TaskState> emit) async {
    final userEmail = await secureStorageRepository.getCurrentOpenedProject();
    final res = await projectsRepository.listCollaborator(userEmail!);

    emit(
      res.fold(
        (l) => state.copyWith(),
        (r) => state.copyWith(listCollaborator: r),
      ),
    );
  }

  void _onReqSelectLabel(ReqSelectLabel event, Emitter<TaskState> emit) async {
    emit(
      state.copyWith(
        enumTaskState: EnumTaskState.initial,
        taskIdx: state.taskIdx,
        taskName: state.taskName,
        taskDescription: state.taskDescription,
        listCollaborator: state.listCollaborator,
        labelId: event.labelId,
        emailAssignee: state.emailAssignee,
      ),
    );
  }

  void _onReqSelectAssignee(ReqSelectAssignee event, Emitter<TaskState> emit) async {
    emit(
      state.copyWith(
        enumTaskState: EnumTaskState.initial,
        taskIdx: state.taskIdx,
        taskName: state.taskName,
        taskDescription: state.taskDescription,
        listCollaborator: state.listCollaborator,
        labelId: state.labelId,
        emailAssignee: event.collaboratorEntities.email ?? '',
      ),
    );
  }

  void _onReqCreateTask(ReqCreateTask event, Emitter<TaskState> emit) async {
    late EnumTaskState enumTaskState;
    String? errMsg;

    // log('_onReqCreateTask ${state.taskName.text} | ${state.taskDescription.text} | ${state.labelId} | ${state.emailAssignee}');
    if (state.taskName.text.isNotEmpty && state.taskDescription.text.isNotEmpty && state.labelId.isNotEmpty && state.emailAssignee.isNotEmpty) {
      enumTaskState = EnumTaskState.resCreateTask;
      boardRepository.createTask(
        state.boardName,
        TaskEntities(
          taskName: state.taskName.text,
          currentBoard: state.boardName,
          label: state.labelId,
          assigneeEntities: AssigneeEntities(email: state.emailAssignee),
        ),
      );
    } else {
      enumTaskState = EnumTaskState.err;
      errMsg = 'Check your input';
    }

    emit(
      state.copyWith(
        enumTaskState: enumTaskState,
        taskIdx: state.taskIdx,
        taskName: state.taskName,
        taskDescription: state.taskDescription,
        listCollaborator: state.listCollaborator,
        labelId: state.labelId,
        emailAssignee: state.emailAssignee,
        errMsg: errMsg,
      ),
    );
  }

  void _onReqEditTask(ReqEditTask event, Emitter<TaskState> emit) {
    emit(
      state.copyWith(
        enumTaskState: EnumTaskState.resEditTask,
        taskIdx: event.taskIdx,
        boardName: event.taskEntities.currentBoard!,
        taskName: TextEditingController(text: event.taskEntities.taskName),
        taskDescription: TextEditingController(text: event.taskEntities.description),
        listCollaborator: state.listCollaborator,
        labelId: event.taskEntities.label ?? '',
        emailAssignee: event.taskEntities.assigneeEntities?.email ?? '',
      ),
    );
  }

  void _onReqUpdateTask(ReqUpdateTask event, Emitter<TaskState> emit) {
    // log('_onReqUpdateTask ${state.boardName} | ${state.taskName.text} | ${state.taskDescription.text} | ${state.labelId} | ${state.emailAssignee}');
    late EnumTaskState enumTaskState;
    String? errMsg;
    if (state.taskName.text.isNotEmpty && state.labelId.isNotEmpty && state.emailAssignee.isNotEmpty) {
      enumTaskState = EnumTaskState.resUpdateTask;
      boardRepository.updateTask(
        state.boardName,
        state.taskIdx!,
        TaskEntities(
          taskName: state.taskName.text,
          description: state.taskDescription.text,
          currentBoard: state.boardName,
          label: state.labelId,
          assigneeEntities: AssigneeEntities(
            email: state.emailAssignee,
          ),
        ),
      );
    } else {
      enumTaskState = EnumTaskState.err;
      errMsg = 'Check your input';
    }

    emit(
      state.copyWith(
        enumTaskState: enumTaskState,
        errMsg: errMsg,
      ),
    );
  }

  void _onReqDeleteTask(ReqDeleteTask event, Emitter<TaskState> emit) {
    log('_onReqDeleteTask ${state.taskIdx}');

    boardRepository.deleteTask(
      TaskEntities(
        taskName: state.taskName.text,
        description: state.taskDescription.text,
        assigneeEntities: AssigneeEntities(email: state.emailAssignee),
        currentBoard: state.boardName,
        label: state.labelId,
      ),
    );

    emit(state.copyWith(
      enumTaskState: EnumTaskState.resDeleteTask
    ));
  }
}
