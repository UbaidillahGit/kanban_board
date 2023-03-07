part of 'projects_bloc.dart';

@freezed
class ProjectsEvent with _$ProjectsEvent {
  // const factory ProjectsEvent.started() = _Started;

  const factory ProjectsEvent.getAll() = ReqGetAllProjects;

  const factory ProjectsEvent.reqCreateProject() = ReqCreateProject;

  const factory ProjectsEvent.reqStreamDetailProject(String id) = ReqStreamDetailProject;

  const factory ProjectsEvent.reqDetail(String id) = ReqDetailProject;

  const factory ProjectsEvent.reqDelete() = ReqDeleteProject;
}