import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kanban_board/application/home/bloc/home_bloc.dart';
import 'package:kanban_board/infrastructure/local/secure_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'home_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<SecureStorageRepository>(as: #MockSecureStorageRepository, onMissingStub: OnMissingStub.throwException)
])


void main() {
  const String mocksAnyString = 'mocks_any_string';
  late HomeBloc homeBloc;
  late MockSecureStorageRepository mockSecureStorageRepository;

  setUp(() {
    mockSecureStorageRepository = MockSecureStorageRepository();
    homeBloc = HomeBloc(mockSecureStorageRepository);
  });

  blocTest(
    'ResUserInfo',
    build: () => homeBloc,
    act: (bloc) => bloc.add(const ReqUserInfo()),
    setUp: () {
      when(mockSecureStorageRepository.getUserDisplayName()).thenAnswer((_) async => mocksAnyString);

      when(mockSecureStorageRepository.getUserPhotoUrl()).thenAnswer((_) async => mocksAnyString);
    },
    expect: () => <HomeState>[
      homeBloc.state.copyWith(
        userDisplayName: mocksAnyString,
        userPhotoUrl: mocksAnyString,
      ),
    ],
  );
}
