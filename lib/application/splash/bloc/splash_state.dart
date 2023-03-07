part of 'splash_bloc.dart';

class EnumSessionState {}

@freezed
class SplashState with _$SplashState {
  const factory SplashState.initial() = SplashStateInitial;

  const factory SplashState.resToLogin() = ResToLogin;
  
  const factory SplashState.resToHome() = ResToHome;
}

