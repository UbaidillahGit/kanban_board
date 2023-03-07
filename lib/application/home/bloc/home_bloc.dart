import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/infrastructure/local/secure_storage.dart';

part 'home_bloc.freezed.dart';
part 'home_event.dart';
part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {

  final SecureStorageRepository secureStorageRepository;
  
  HomeBloc(this.secureStorageRepository) : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) {});

    on<ReqUserInfo>(_onReqUserInfo);
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
}
