part of 'splash_bloc.dart';

// @immutable

@freezed
class SplashEvent with _$SplashEvent {
  const factory SplashEvent.initial() = SplashInit;

  const factory SplashEvent.reqSession() = ReqSession;
}
