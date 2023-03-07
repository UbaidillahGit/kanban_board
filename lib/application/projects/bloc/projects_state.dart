part of 'projects_bloc.dart';

enum EnumProjectState {idle, loading, success, failure, allProjects, resDetailProject, resStreamDetailProject}

@freezed
class ProjectsState extends Equatable with _$ProjectsState {
  ProjectsState._();

  factory ProjectsState({
    required TextEditingController projectsNameController,
    required TextEditingController projectsDescriptionController,
    required List<ProjectEntities> list,
    required ProjectEntities projectEntities,
    required EnumProjectState enumProjectState,
    required String projectsId,
  }) = _ProjectsState;

  factory ProjectsState.initial() => ProjectsState(
      projectsDescriptionController: TextEditingController(text: ''),
      projectsNameController: TextEditingController(text: ''),
      list: const [],
      projectEntities: ProjectEntities(),
      enumProjectState: EnumProjectState.idle,
      projectsId: '');

  @override
  List<Object?> get props => [
        projectsNameController,
        projectsDescriptionController,
        list,
        projectEntities,
        enumProjectState,
        projectsId,
        // identityHashCode(this),
      ];

  // factory ProjectsState.resCreateProject() = ResCreateProject;
}
