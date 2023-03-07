import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/domain/projects/failure/failure.dart';
import 'package:kanban_board/domain/projects/param/projects_param.dart';
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart';
import 'package:kanban_board/infrastructure/remote/projects_repo.dart';

part 'projects_bloc.freezed.dart';
part 'projects_event.dart';
part 'projects_state.dart';

/// [Naming Convention]

/// [req] keyword stands for [Request]
/// [res] keyword stands for [Response]

/// [Enum] to identify which [Response] type to be return

@injectable
class ProjectsBloc extends Bloc<ProjectsEvent, ProjectsState> {
  final ProjectsRepository projectsRepository;
  final SecureStorageRepository secureStorageRepository;

  ProjectsBloc(this.projectsRepository, this.secureStorageRepository) : super(ProjectsState.initial()) {
    on<ProjectsEvent>((event, emit) {});

    on<ReqDetailProject>(_onReqDetailProject);

    on<ReqStreamDetailProject>(_onReqStreamDetailProject);

    on<ReqCreateProject>(_onReqCreateProject);

    on<ReqGetAllProjects>(_onReqGetAllProjects);

    on<ReqDeleteProject>(_onReqDeleteProject);
  }

  void _onReqDetailProject(ReqDetailProject event, Emitter<ProjectsState> emit) async {
    final either = await projectsRepository.detail(event.id);

    emit(
      either.fold(
        (l) => state.copyWith(enumProjectState: EnumProjectState.failure),
        (r) {
          secureStorageRepository.setCurrentOpenedProject(event.id);
          return state.copyWith(
            projectEntities: r,
            enumProjectState: EnumProjectState.resDetailProject,
          );
        },
      ),
    );
  }

  void _onReqStreamDetailProject(ReqStreamDetailProject event, Emitter<ProjectsState> emit) async {
    /// _______ Set current opened project ID to local-storeage
    ///
    secureStorageRepository.setCurrentOpenedProject(event.id);

    ///_________ Subscription/Real-time update data from Firestore
    ///
    await emit.forEach(
      projectsRepository.streamDetailProjects(event.id),
      onData: (data) => data.fold(
        (l) => state.copyWith(),
        (r) => state.copyWith(
          projectEntities: r,
          enumProjectState: EnumProjectState.resStreamDetailProject,
        ),
      ),
    );
  }

  void _onReqCreateProject(ReqCreateProject event, Emitter<ProjectsState> emit) async {
    final projectOwnerEmail = await secureStorageRepository.getUserEmail();
    final either = await projectsRepository.create(
      ProjecParam(
        projectName: state.projectsNameController.text,
        projectDescription: state.projectsDescriptionController.text,
        projectOwner: projectOwnerEmail!,
      ),
    );

    emit(
      either.fold(
        (l) => state.copyWith(enumProjectState: EnumProjectState.failure),
        (r) => state.copyWith(enumProjectState: EnumProjectState.success, projectsId: r),
      ),
    );
  }

  void _onReqGetAllProjects(ReqGetAllProjects event, Emitter<ProjectsState> emit) async {
    String? userEmail = await secureStorageRepository.getUserEmail();

    if (userEmail != null) {
      final res = await projectsRepository.listProject(userEmail);

      emit(
        res.fold(
          (l) => state.copyWith( enumProjectState: EnumProjectState.emptyProjects),
          (r) => state.copyWith(
            list: r,
            enumProjectState: EnumProjectState.allProjects,
          ),
        ),
      );
    } else {
      emit(state.copyWith(enumProjectState: EnumProjectState.failure));
    }
  }

  void _onReqDeleteProject(ReqDeleteProject event, Emitter<ProjectsState> emit) async {
    String? currentProjectId = await secureStorageRepository.getCurrentOpenedProject();

    if (currentProjectId != null) {
      final res = await projectsRepository.delete(currentProjectId);

      emit(
        res.fold(
          (l) => state.copyWith(enumProjectState: EnumProjectState.failure),
          (r) => state.copyWith(
            enumProjectState: EnumProjectState.resDeleteProject
          )
        ),
      );
    } else {
      emit(state.copyWith(enumProjectState: EnumProjectState.failure));
    }
  }
}
