part of 'projects_bloc.dart';

enum EnumProjectState {
  idle,
  loading,
  success,
  failure,
  allProjects,
  emptyProjects,
  resDetailProject,
  resStreamDetailProject,
  resDeleteProject
}

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
    required ProjectsFailure? projectsFailure
  }) = _ProjectsState;

  factory ProjectsState.initial() => ProjectsState(
      projectsDescriptionController: TextEditingController(text: ''),
      projectsNameController: TextEditingController(text: ''),
      list: const [],
      projectEntities: ProjectEntities(),
      enumProjectState: EnumProjectState.loading,
      projectsId: '', projectsFailure: null);

  @override
  List<Object?> get props => [
        projectsNameController,
        projectsDescriptionController,
        list,
        projectEntities,
        enumProjectState,
        projectsId,
        projectsFailure
        // identityHashCode(this),
      ];

}
