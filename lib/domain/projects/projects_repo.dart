import 'package:fpdart/fpdart.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/domain/projects/failure/failure.dart';
import 'package:kanban_board/domain/projects/param/projects_param.dart';

abstract class ProjectsRepository {

  Stream<Either<ProjectsFailure, ProjectEntities>> streamDetailProjects(String id);

  Future<Either<ProjectsFailure, ProjectEntities>> detail(String id);

  Future<Either<ProjectsFailure, List<ProjectEntities>>> listProject(String userEmail);

  Future<Either<ProjectsFailure, List<CollaboratorEntities>>> listCollaborator(String projectsId);

  Future<Either<ProjectsFailure, String>> create(ProjecParam projectEntities);
}