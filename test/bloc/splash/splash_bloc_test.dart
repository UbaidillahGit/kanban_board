import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kanban_board/application/splash/bloc/splash_bloc.dart';
import 'package:kanban_board/domain/user/user_repo.dart';
import 'package:kanban_board/infrastructure/local/secure_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'splash_bloc_test.mocks.dart';

@GenerateNiceMocks(
  [
    MockSpec<SecureStorageRepository>(as: #MockSecureStorageRepository),
    // MockSpec<FirebaseAuth>(as: #MockFirebaseAuth),
     MockSpec<UserRepository>(as: #MockUserRepository),
  ],
)

void main() {
  late SplashBloc splashBloc;
  // late MockFirebaseAuth mockFirebaseAuth;
  // late MockSplashBloc mockSplashBloc;
  late MockSecureStorageRepository mockSecureStorageRepository;

  setUp(() {
    // WidgetsFlutterBinding.ensureInitialized();
    mockSecureStorageRepository = MockSecureStorageRepository();
    splashBloc = SplashBloc(mockSecureStorageRepository);
    
    // mockFirebaseAuth = MockFirebaseAuth();
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
