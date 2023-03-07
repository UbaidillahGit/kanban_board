import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart';
import 'package:kanban_board/infrastructure/remote/auth_repo.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

/// [Naming Convention]

/// [req] keyword stands for [Request]
/// [res] keyword stands for [Response]

/// [Enum] to identify which [Response] type to be return

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final SecureStorageRepository secureStorageRepository;
  final AuthRepository authRepository;
  
  HomeBloc(this.secureStorageRepository, this.authRepository) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) {});

    on<ReqUserInfo>(_onReqUserInfo);

    on<ReqSignOut>(_onReqSignOut);
  }

  void _onReqUserInfo(HomeEvent event, Emitter<HomeState> emit) async {

    final userDisplayName = await secureStorageRepository.getUserDisplayName();
    final userPhotoUrl = await secureStorageRepository.getUserPhotoUrl();

    emit(
      state.copyWith(
        userDisplayName: userDisplayName!,
        userPhotoUrl: userPhotoUrl!,
      ),
    );
  }

  void _onReqSignOut(ReqSignOut event, Emitter<HomeState> emit) async {
    await authRepository.signOut();

    emit(state.copyWith(
      enumHomeState: EnumHomeState.resSignOut
    ));
  }
}
