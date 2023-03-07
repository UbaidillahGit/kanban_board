
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/domain/user/failure.dart';

abstract class UserRepository {
  Future<Either<UsersFailure, Unit>> create(User user);
}

@LazySingleton(as: UserRepository)
class UserRepositoryImplement implements UserRepository {

  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  @override
  Future<Either<UsersFailure, Unit>> create(User user) async {
    try {
      CollectionReference users = firestore.collection('users');
      await users.doc(user.email).set(
        {
          'display_name' : user.displayName,
          'email': user.email,
          'name': user.displayName,
          'photo_url' : user.photoURL
        },
      );
      return right(unit);
    } on FirebaseAuthException {
      return left(const UsersFailure.unexpected());
    }
  }  
}