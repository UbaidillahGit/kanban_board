part of 'home_bloc.dart';

enum EnumHomeState {initial, resUserInfo, resSignOut }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required EnumHomeState enumHomeState,
    required String userDisplayName,
    required String userPhotoUrl,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        enumHomeState: EnumHomeState.initial,
        userDisplayName: '',
        userPhotoUrl: 'https://dummyimage.com/skyscraper',
      );
}
