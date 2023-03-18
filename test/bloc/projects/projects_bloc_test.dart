
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/domain/projects/failure/failure.dart';
import 'package:kanban_board/domain/projects/param/projects_param.dart';
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart';
import 'package:kanban_board/infrastructure/remote/projects_repo.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'projects_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ProjectsRepository>(as: #MockProjectsRepository, onMissingStub: OnMissingStub.throwException),
  MockSpec<SecureStorageRepository>(as: #MockSecureStorageRepository, onMissingStub: OnMissingStub.throwException),
  // MockSpec<ProjecParam>(as: #MockProjecParam, onMissingStub: OnMissingStub.throwException)
])

void main() {
  const String mocksAnyString = 'mocks_any_string';
  late MockProjectsRepository mockProjectsRepository;
  late MockSecureStorageRepository mockSecureStorageRepository;
  // late ProjecParam mockProjectParam;
  late ProjectsBloc projectsBloc;
  late ProjectEntities projectEntities;
  late EnumProjectState enumProjectState;
 

  setUp(() {
    mockProjectsRepository = MockProjectsRepository();
    mockSecureStorageRepository = MockSecureStorageRepository();
    // mockProjectParam = MockProjecParam();
    projectsBloc = ProjectsBloc(mockProjectsRepository, mockSecureStorageRepository);
    projectEntities = ProjectEntities(
      owner: mocksAnyString,
      description: mocksAnyString,
      id: mocksAnyString,
      name: mocksAnyString,
      done: BoardEntities(),
      inProgress: BoardEntities(),
      toDo: BoardEntities(),
      collaborator: [CollaboratorEntities(), CollaboratorEntities(),]
    );
  });


group('Projects Bloc', () {
    blocTest(
      'ReqDetailProject.resDetailProject',
      build: () => projectsBloc,
      act: (bloc) => bloc.add(const ReqDetailProject(mocksAnyString)),
      setUp: () {
        when(mockProjectsRepository.detail(mocksAnyString)).thenAnswer((_) async 
          => Either.right(projectEntities));
      },
      expect: () => equals([
        projectsBloc.state.copyWith(
          projectEntities: projectEntities,
          enumProjectState: EnumProjectState.resDetailProject,
        )
      ]),
    );

    blocTest(
      'ReqDetailProject.failure',
      build: () => projectsBloc,
      act: (bloc) => bloc.add(const ReqDetailProject(mocksAnyString)),
      setUp: () {
        when(mockProjectsRepository.detail(mocksAnyString)).thenAnswer((_) async 
          => Either.left(ProjectsFailure.emptyProjecest()));
      },
      expect: () => equals([
        projectsBloc.state.copyWith(
          enumProjectState: EnumProjectState.failure,
        )
      ]),
    );

    blocTest(
      'ReqStreamDetailProject',
      build: () => projectsBloc,
      act: (bloc) => bloc.add(const ReqStreamDetailProject(mocksAnyString)),
      setUp: () {
        when(mockProjectsRepository.streamDetailProjects(mocksAnyString)).thenAnswer((_) async* {
          yield (Either.right(projectEntities));
        });
      },
      expect: () => equals([
        projectsBloc.state.copyWith(
          projectEntities: projectEntities,
          enumProjectState: EnumProjectState.resStreamDetailProject,
        )
      ]),
    );

    blocTest(
      'ReqCreateProject.success',
      build: () => projectsBloc,
      act: (bloc) => bloc.add(const ReqCreateProject()),
      setUp: () {
         final ProjecParam projecParam;
        projecParam = ProjecParam(
          projectName: 'name',
          projectDescription: 'description',
          projectOwner: 'owner',
        );

        when(mockSecureStorageRepository.getUserEmail()).thenAnswer((_) async => Future.value('future'));

        when(mockProjectsRepository.create(projecParam)).thenAnswer((_) async => Either.right(''));
      },
      expect: () => <ProjectsState>[
        projectsBloc.state.copyWith(enumProjectState: EnumProjectState.success, projectsId: 'r')
      ],
    );
  });
}