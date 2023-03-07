part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required String userDisplayName,
    required String userPhotoUrl,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        userDisplayName: '',
        userPhotoUrl: 'https://dummyimage.com/skyscraper/f0f/f',
      );

  // const factory HomeState.resUserInfor() = ResUserInfo;
}
