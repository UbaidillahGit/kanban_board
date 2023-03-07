
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart';

abstract class AuthRepository {
  Future<GoogleSignInAccount?> goggleSignIn();

  Future<void> signOut();
}

@LazySingleton(as: AuthRepository)
class AuthRepositoryImplements implements AuthRepository {
  AuthRepositoryImplements(this.secureStorageRepository);

  final SecureStorageRepository secureStorageRepository;


  @override
  Future<GoogleSignInAccount?> goggleSignIn() async {
    final GoogleSignInAccount? googleUser;
    googleUser = await GoogleSignIn().signIn();
    return googleUser;
  }

  @override
  Future<void> signOut() async {
    try {
      await Future.wait([
        secureStorageRepository.setClearAll(),
        // FirebaseAuth.instance.signOut(),
        GoogleSignIn().signOut(),
      ]);
    } catch (e) {
      rethrow;
    }
  }
}
