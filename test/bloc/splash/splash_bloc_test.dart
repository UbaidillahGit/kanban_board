import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kanban_board/application/splash/bloc/splash_bloc.dart';
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart';
import 'package:kanban_board/infrastructure/remote/user_repo.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'splash_bloc_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<SecureStorageRepository>(as: #MockSecureStorageRepository),
     MockSpec<UserRepository>(as: #MockUserRepository),
  ],
)

void main() {
  late SplashBloc splashBloc;
  late MockSecureStorageRepository mockSecureStorageRepository;

  setUp(() {
    mockSecureStorageRepository = MockSecureStorageRepository();
    splashBloc = SplashBloc(mockSecureStorageRepository);
  });

  group('Splash Bloc Testing', () {

    blocTest<SplashBloc, SplashState>(
      'emits [ResToLogin] when Session is null.',
      build: () => splashBloc,
      act: (bloc) => bloc.add(const ReqSession()),
      setUp: () => when(mockSecureStorageRepository.getUserEmail()).thenAnswer((_) async => null),
      expect: () => <SplashState>[
        const ResToLogin(),
      ],
    );

    blocTest<SplashBloc, SplashState>(
      'emits [ResToHome] when Session is non-null.',
      build: () => splashBloc,
      act: (bloc) => bloc.add(const ReqSession()),
      setUp: () => when(mockSecureStorageRepository.getUserEmail()).thenAnswer((_) async => 'user@mail.com'),
      expect: () => <SplashState>[
        const ResToHome(),
      ],
    );
  });
}
