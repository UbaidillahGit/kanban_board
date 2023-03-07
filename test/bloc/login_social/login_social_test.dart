import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kanban_board/application/login_social/bloc/login_bloc.dart';
import 'package:kanban_board/domain/user/user_repo.dart';
import 'package:kanban_board/infrastructure/local/secure_storage.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'login_social_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<FirebaseAuth>(as: #MockFirebaseAuth, onMissingStub: OnMissingStub.throwException),

  MockSpec<UserRepository>(as: #MockUserRepository, onMissingStub: OnMissingStub.throwException),

  MockSpec<SecureStorageRepository>(as: #MockSecureStorageRepository, onMissingStub: OnMissingStub.throwException),

  MockSpec<GoogleSignIn>(as: #MockGoogleSignIn, onMissingStub: OnMissingStub.throwException),

  MockSpec<GoogleSignInAccount>(as: #MockGoogleSignInAccount, onMissingStub: OnMissingStub.throwException),

  MockSpec<GoogleSignInAuthentication>(as: #MockGoogleSignInAuthentication, onMissingStub: OnMissingStub.throwException),

  MockSpec<UserCredential>(as: #MockUserCredential, onMissingStub: OnMissingStub.throwException),

  MockSpec<AuthCredential>(as: #MockAuthCredential, onMissingStub: OnMissingStub.throwException),
  
  MockSpec<User>(as: #MockUser, onMissingStub: OnMissingStub.throwException)
])

void main() {
  late LoginBloc loginBloc;
  late MockFirebaseAuth mockFirebaseAuth;
  late MockUserRepository mockUserRepository;
  late MockSecureStorageRepository mockSecureStorageRepository;

  late MockGoogleSignInAccount mockGoogleSignInAccount;
  late MockGoogleSignInAuthentication mockGoogleSignInAuthentication;
  late MockUserCredential mockUserCredential;
  late MockUser mockUser;
  
  setUp(() {
    mockFirebaseAuth = MockFirebaseAuth();
    mockUserRepository = MockUserRepository();
    mockSecureStorageRepository = MockSecureStorageRepository();
    loginBloc = LoginBloc(
      mockFirebaseAuth,
      mockUserRepository,
      mockSecureStorageRepository,
    );
    mockGoogleSignInAccount = MockGoogleSignInAccount();
    mockGoogleSignInAuthentication = MockGoogleSignInAuthentication();
    mockUserCredential = MockUserCredential();
    mockUser = MockUser();
  });

  blocTest(
    'On Request GoogleSign In',
    build: () => loginBloc,
    act: (bloc) => bloc.add(const ReqGoogleSignIn()),
    expect: () => <LoginState>[const ResGoogleSignIn()],
    setUp: () {
     
      const String mocksAnyString = 'mocks_any_string';

      when(mockUserRepository.goggleSignIn()).thenAnswer((_) async => mockGoogleSignInAccount);

      when(mockGoogleSignInAccount.authentication).thenAnswer((_) async => mockGoogleSignInAuthentication);

      when(mockGoogleSignInAuthentication.accessToken).thenAnswer((_) => mocksAnyString);

      when(mockGoogleSignInAuthentication.idToken).thenAnswer((_) => mocksAnyString);

      when(mockFirebaseAuth.signInWithCredential(any)).thenAnswer((_) => Future.value(mockUserCredential));

      when(mockUserCredential.user).thenReturn(mockUser);

      when(mockUserRepository.create(any)).thenAnswer((_) async => Future.value(Either.of(unit)) );

      when(mockUser.displayName).thenReturn(mocksAnyString);

      when(mockUser.email).thenReturn(mocksAnyString);

      when(mockUser.photoURL).thenReturn(mocksAnyString);

    },
  );
  
}