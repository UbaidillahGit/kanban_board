import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/domain/user/user_repo.dart';
import 'package:kanban_board/infrastructure/local/secure_storage.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(
    this._auth,
    this.userRepository,
    this.secureStorageRepository,
  ) : super(const _Initial()) {
    on<LoginEvent>((event, emit) {});

    on<ReqGoogleSignIn>(_onReqGoogleSignIn);
  }

  final FirebaseAuth _auth;
  final UserRepository userRepository;

  final SecureStorageRepository secureStorageRepository;

  void _onReqGoogleSignIn(ReqGoogleSignIn event, Emitter<LoginState> emit) async {
    log('_onReqGoogleSignIn fired');

    final googleSignInAccount = await userRepository.goggleSignIn();

    final GoogleSignInAuthentication? googleAuth = await googleSignInAccount?.authentication;

    if (googleAuth?.accessToken != null && googleAuth?.idToken != null) {
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final userCred = await _auth.signInWithCredential(credential);

      Option<UserCredential> userCredential = optionOf(userCred);

      userCredential.fold(() => null, (t) async {
        userRepository.create(t.user!);
        secureStorageRepository.setUserDisplayName(t.user?.displayName ?? '');
        secureStorageRepository.setUserEmail(t.user?.email ?? '');
        secureStorageRepository.setUserPhotoUrl(t.user?.photoURL ?? '');
        emit(const ResGoogleSignIn());
      });
    }
  }
}
