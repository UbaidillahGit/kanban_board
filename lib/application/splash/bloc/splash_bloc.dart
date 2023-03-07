import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

/// [Naming Convention]

/// [req] keyword stands for [Request]
/// [res] keyword stands for [Response]

/// [Enum] to identify which [Response] type to be return

@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final SecureStorageRepository secureStorageRepository;
  
  SplashBloc(this.secureStorageRepository) : super(const SplashState.initial()) {
    on<ReqSession>(_onReqSession);
  }


  void _onReqSession(ReqSession event, Emitter<SplashState> emit) async {
    Option<String> userEmail = optionOf(await secureStorageRepository.getUserEmail());
    userEmail.fold(
      () => emit(const ResToLogin()),
      (t) => emit(const ResToHome()),
    );
  }
}