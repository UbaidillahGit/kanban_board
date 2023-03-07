import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:kanban_board/domain/user/failure.dart';

abstract class UserRepository {
  Future<Either<UsersFailure, Unit>> create(User user);

   Future<GoogleSignInAccount?> goggleSignIn();
}