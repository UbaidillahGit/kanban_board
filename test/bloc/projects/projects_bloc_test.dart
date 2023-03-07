
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart';
import 'package:kanban_board/infrastructure/remote/projects_repo.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'projects_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<ProjectsRepository>(as: #MockProjectsRepository, onMissingStub: OnMissingStub.throwException),
  MockSpec<SecureStorageRepository>(as: #MockSecureStorageRepository, onMissingStub: OnMissingStub.throwException)
])

void main() {
  const String mocksAnyString = 'mocks_any_string';
  late MockProjectsRepository mockProjectsRepository;
  late MockSecureStorageRepository mockSecureStorageRepository;
  late ProjectsBloc projectsBloc;
  late ProjectEntities projectEntities;
  late EnumProjectState enumProjectState;

  setUp(() {
    mockProjectsRepository = MockProjectsRepository();
    mockSecureStorageRepository = MockSecureStorageRepository();
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
      'ReqDetailProject',
      build: () => projectsBloc,
      act: (bloc) => bloc.add(const ReqDetailProject(mocksAnyString)),
      setUp: () {
        when(mockProjectsRepository.detail(mocksAnyString)).thenAnswer((realInvocation) async => Either.right(projectEntities));
      },
      expect: () => equals([
        projectsBloc.state.copyWith(
          projectEntities: projectEntities,
          enumProjectState: EnumProjectState.resDetailProject,
        )
      ]),
    );

    // blocTest('ReqCreate', build: build)
  });
}