part of 'projects_bloc.dart';

@freezed
class ProjectsEvent with _$ProjectsEvent {
  // const factory ProjectsEvent.started() = _Started;

  const factory ProjectsEvent.getAll() = ReqGetAllProjects;

  const factory ProjectsEvent.reqCreateProject() = ReqCreateProject;

  factory ProjectsEvent.reqStreamDetailProject(String id) = ReqStreamDetailProject;

  factory ProjectsEvent.detail(String id) = ReqDetailProject;
}