// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjecParam {
  String get projectName => throw _privateConstructorUsedError;
  String get projectDescription => throw _privateConstructorUsedError;
  String get projectOwner => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjecParamCopyWith<ProjecParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjecParamCopyWith<$Res> {
  factory $ProjecParamCopyWith(
          ProjecParam value, $Res Function(ProjecParam) then) =
      _$ProjecParamCopyWithImpl<$Res, ProjecParam>;
  @useResult
  $Res call(
      {String projectName, String projectDescription, String projectOwner});
}

/// @nodoc
class _$ProjecParamCopyWithImpl<$Res, $Val extends ProjecParam>
    implements $ProjecParamCopyWith<$Res> {
  _$ProjecParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? projectDescription = null,
    Object? projectOwner = null,
  }) {
    return _then(_value.copyWith(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      projectOwner: null == projectOwner
          ? _value.projectOwner
          : projectOwner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjecParamCopyWith<$Res>
    implements $ProjecParamCopyWith<$Res> {
  factory _$$_ProjecParamCopyWith(
          _$_ProjecParam value, $Res Function(_$_ProjecParam) then) =
      __$$_ProjecParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String projectName, String projectDescription, String projectOwner});
}

/// @nodoc
class __$$_ProjecParamCopyWithImpl<$Res>
    extends _$ProjecParamCopyWithImpl<$Res, _$_ProjecParam>
    implements _$$_ProjecParamCopyWith<$Res> {
  __$$_ProjecParamCopyWithImpl(
      _$_ProjecParam _value, $Res Function(_$_ProjecParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectName = null,
    Object? projectDescription = null,
    Object? projectOwner = null,
  }) {
    return _then(_$_ProjecParam(
      projectName: null == projectName
          ? _value.projectName
          : projectName // ignore: cast_nullable_to_non_nullable
              as String,
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      projectOwner: null == projectOwner
          ? _value.projectOwner
          : projectOwner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProjecParam extends _ProjecParam {
  _$_ProjecParam(
      {required this.projectName,
      required this.projectDescription,
      required this.projectOwner})
      : super._();

  @override
  final String projectName;
  @override
  final String projectDescription;
  @override
  final String projectOwner;

  @override
  String toString() {
    return 'ProjecParam(projectName: $projectName, projectDescription: $projectDescription, projectOwner: $projectOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjecParam &&
            (identical(other.projectName, projectName) ||
                other.projectName == projectName) &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            (identical(other.projectOwner, projectOwner) ||
                other.projectOwner == projectOwner));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, projectName, projectDescription, projectOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjecParamCopyWith<_$_ProjecParam> get copyWith =>
      __$$_ProjecParamCopyWithImpl<_$_ProjecParam>(this, _$identity);
}

abstract class _ProjecParam extends ProjecParam {
  factory _ProjecParam(
      {required final String projectName,
      required final String projectDescription,
      required final String projectOwner}) = _$_ProjecParam;
  _ProjecParam._() : super._();

  @override
  String get projectName;
  @override
  String get projectDescription;
  @override
  String get projectOwner;
  @override
  @JsonKey(ignore: true)
  _$$_ProjecParamCopyWith<_$_ProjecParam> get copyWith =>
      throw _privateConstructorUsedError;
}
