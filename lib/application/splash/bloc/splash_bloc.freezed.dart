// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reqSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reqSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reqSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInit value) initial,
    required TResult Function(ReqSession value) reqSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInit value)? initial,
    TResult? Function(ReqSession value)? reqSession,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInit value)? initial,
    TResult Function(ReqSession value)? reqSession,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashEventCopyWith<$Res> {
  factory $SplashEventCopyWith(
          SplashEvent value, $Res Function(SplashEvent) then) =
      _$SplashEventCopyWithImpl<$Res, SplashEvent>;
}

/// @nodoc
class _$SplashEventCopyWithImpl<$Res, $Val extends SplashEvent>
    implements $SplashEventCopyWith<$Res> {
  _$SplashEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashInitCopyWith<$Res> {
  factory _$$SplashInitCopyWith(
          _$SplashInit value, $Res Function(_$SplashInit) then) =
      __$$SplashInitCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashInitCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$SplashInit>
    implements _$$SplashInitCopyWith<$Res> {
  __$$SplashInitCopyWithImpl(
      _$SplashInit _value, $Res Function(_$SplashInit) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashInit implements SplashInit {
  const _$SplashInit();

  @override
  String toString() {
    return 'SplashEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashInit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reqSession,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reqSession,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reqSession,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInit value) initial,
    required TResult Function(ReqSession value) reqSession,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInit value)? initial,
    TResult? Function(ReqSession value)? reqSession,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInit value)? initial,
    TResult Function(ReqSession value)? reqSession,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SplashInit implements SplashEvent {
  const factory SplashInit() = _$SplashInit;
}

/// @nodoc
abstract class _$$ReqSessionCopyWith<$Res> {
  factory _$$ReqSessionCopyWith(
          _$ReqSession value, $Res Function(_$ReqSession) then) =
      __$$ReqSessionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReqSessionCopyWithImpl<$Res>
    extends _$SplashEventCopyWithImpl<$Res, _$ReqSession>
    implements _$$ReqSessionCopyWith<$Res> {
  __$$ReqSessionCopyWithImpl(
      _$ReqSession _value, $Res Function(_$ReqSession) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReqSession implements ReqSession {
  const _$ReqSession();

  @override
  String toString() {
    return 'SplashEvent.reqSession()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReqSession);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() reqSession,
  }) {
    return reqSession();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? reqSession,
  }) {
    return reqSession?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? reqSession,
    required TResult orElse(),
  }) {
    if (reqSession != null) {
      return reqSession();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashInit value) initial,
    required TResult Function(ReqSession value) reqSession,
  }) {
    return reqSession(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashInit value)? initial,
    TResult? Function(ReqSession value)? reqSession,
  }) {
    return reqSession?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashInit value)? initial,
    TResult Function(ReqSession value)? reqSession,
    required TResult orElse(),
  }) {
    if (reqSession != null) {
      return reqSession(this);
    }
    return orElse();
  }
}

abstract class ReqSession implements SplashEvent {
  const factory ReqSession() = _$ReqSession;
}

/// @nodoc
mixin _$SplashState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() resToLogin,
    required TResult Function() resToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? resToLogin,
    TResult? Function()? resToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? resToLogin,
    TResult Function()? resToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateInitial value) initial,
    required TResult Function(ResToLogin value) resToLogin,
    required TResult Function(ResToHome value) resToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStateInitial value)? initial,
    TResult? Function(ResToLogin value)? resToLogin,
    TResult? Function(ResToHome value)? resToHome,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateInitial value)? initial,
    TResult Function(ResToLogin value)? resToLogin,
    TResult Function(ResToHome value)? resToHome,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashStateCopyWith<$Res> {
  factory $SplashStateCopyWith(
          SplashState value, $Res Function(SplashState) then) =
      _$SplashStateCopyWithImpl<$Res, SplashState>;
}

/// @nodoc
class _$SplashStateCopyWithImpl<$Res, $Val extends SplashState>
    implements $SplashStateCopyWith<$Res> {
  _$SplashStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SplashStateInitialCopyWith<$Res> {
  factory _$$SplashStateInitialCopyWith(_$SplashStateInitial value,
          $Res Function(_$SplashStateInitial) then) =
      __$$SplashStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SplashStateInitialCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$SplashStateInitial>
    implements _$$SplashStateInitialCopyWith<$Res> {
  __$$SplashStateInitialCopyWithImpl(
      _$SplashStateInitial _value, $Res Function(_$SplashStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SplashStateInitial implements SplashStateInitial {
  const _$SplashStateInitial();

  @override
  String toString() {
    return 'SplashState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SplashStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() resToLogin,
    required TResult Function() resToHome,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? resToLogin,
    TResult? Function()? resToHome,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? resToLogin,
    TResult Function()? resToHome,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateInitial value) initial,
    required TResult Function(ResToLogin value) resToLogin,
    required TResult Function(ResToHome value) resToHome,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStateInitial value)? initial,
    TResult? Function(ResToLogin value)? resToLogin,
    TResult? Function(ResToHome value)? resToHome,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateInitial value)? initial,
    TResult Function(ResToLogin value)? resToLogin,
    TResult Function(ResToHome value)? resToHome,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SplashStateInitial implements SplashState {
  const factory SplashStateInitial() = _$SplashStateInitial;
}

/// @nodoc
abstract class _$$ResToLoginCopyWith<$Res> {
  factory _$$ResToLoginCopyWith(
          _$ResToLogin value, $Res Function(_$ResToLogin) then) =
      __$$ResToLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResToLoginCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$ResToLogin>
    implements _$$ResToLoginCopyWith<$Res> {
  __$$ResToLoginCopyWithImpl(
      _$ResToLogin _value, $Res Function(_$ResToLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResToLogin implements ResToLogin {
  const _$ResToLogin();

  @override
  String toString() {
    return 'SplashState.resToLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResToLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() resToLogin,
    required TResult Function() resToHome,
  }) {
    return resToLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? resToLogin,
    TResult? Function()? resToHome,
  }) {
    return resToLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? resToLogin,
    TResult Function()? resToHome,
    required TResult orElse(),
  }) {
    if (resToLogin != null) {
      return resToLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateInitial value) initial,
    required TResult Function(ResToLogin value) resToLogin,
    required TResult Function(ResToHome value) resToHome,
  }) {
    return resToLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStateInitial value)? initial,
    TResult? Function(ResToLogin value)? resToLogin,
    TResult? Function(ResToHome value)? resToHome,
  }) {
    return resToLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateInitial value)? initial,
    TResult Function(ResToLogin value)? resToLogin,
    TResult Function(ResToHome value)? resToHome,
    required TResult orElse(),
  }) {
    if (resToLogin != null) {
      return resToLogin(this);
    }
    return orElse();
  }
}

abstract class ResToLogin implements SplashState {
  const factory ResToLogin() = _$ResToLogin;
}

/// @nodoc
abstract class _$$ResToHomeCopyWith<$Res> {
  factory _$$ResToHomeCopyWith(
          _$ResToHome value, $Res Function(_$ResToHome) then) =
      __$$ResToHomeCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResToHomeCopyWithImpl<$Res>
    extends _$SplashStateCopyWithImpl<$Res, _$ResToHome>
    implements _$$ResToHomeCopyWith<$Res> {
  __$$ResToHomeCopyWithImpl(
      _$ResToHome _value, $Res Function(_$ResToHome) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResToHome implements ResToHome {
  const _$ResToHome();

  @override
  String toString() {
    return 'SplashState.resToHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResToHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() resToLogin,
    required TResult Function() resToHome,
  }) {
    return resToHome();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? resToLogin,
    TResult? Function()? resToHome,
  }) {
    return resToHome?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? resToLogin,
    TResult Function()? resToHome,
    required TResult orElse(),
  }) {
    if (resToHome != null) {
      return resToHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SplashStateInitial value) initial,
    required TResult Function(ResToLogin value) resToLogin,
    required TResult Function(ResToHome value) resToHome,
  }) {
    return resToHome(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SplashStateInitial value)? initial,
    TResult? Function(ResToLogin value)? resToLogin,
    TResult? Function(ResToHome value)? resToHome,
  }) {
    return resToHome?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SplashStateInitial value)? initial,
    TResult Function(ResToLogin value)? resToLogin,
    TResult Function(ResToHome value)? resToHome,
    required TResult orElse(),
  }) {
    if (resToHome != null) {
      return resToHome(this);
    }
    return orElse();
  }
}

abstract class ResToHome implements SplashState {
  const factory ResToHome() = _$ResToHome;
}
