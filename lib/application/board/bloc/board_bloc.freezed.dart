// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BoardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProjectEntities projectData) reqProjectData,
    required TResult Function(int page) reqAnimateBoardTo,
    required TResult Function(
            TaskEntities taskEntities, String boardDestination)
        reqTaskMove,
    required TResult Function() reqExportCsv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProjectEntities projectData)? reqProjectData,
    TResult? Function(int page)? reqAnimateBoardTo,
    TResult? Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult? Function()? reqExportCsv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProjectEntities projectData)? reqProjectData,
    TResult Function(int page)? reqAnimateBoardTo,
    TResult Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult Function()? reqExportCsv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqProjectData value) reqProjectData,
    required TResult Function(ReqAnimateBoardTo value) reqAnimateBoardTo,
    required TResult Function(ReqTaskMove value) reqTaskMove,
    required TResult Function(ReqExportCsv value) reqExportCsv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqProjectData value)? reqProjectData,
    TResult? Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult? Function(ReqTaskMove value)? reqTaskMove,
    TResult? Function(ReqExportCsv value)? reqExportCsv,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqProjectData value)? reqProjectData,
    TResult Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult Function(ReqTaskMove value)? reqTaskMove,
    TResult Function(ReqExportCsv value)? reqExportCsv,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardEventCopyWith<$Res> {
  factory $BoardEventCopyWith(
          BoardEvent value, $Res Function(BoardEvent) then) =
      _$BoardEventCopyWithImpl<$Res, BoardEvent>;
}

/// @nodoc
class _$BoardEventCopyWithImpl<$Res, $Val extends BoardEvent>
    implements $BoardEventCopyWith<$Res> {
  _$BoardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$BoardEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'BoardEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProjectEntities projectData) reqProjectData,
    required TResult Function(int page) reqAnimateBoardTo,
    required TResult Function(
            TaskEntities taskEntities, String boardDestination)
        reqTaskMove,
    required TResult Function() reqExportCsv,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProjectEntities projectData)? reqProjectData,
    TResult? Function(int page)? reqAnimateBoardTo,
    TResult? Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult? Function()? reqExportCsv,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProjectEntities projectData)? reqProjectData,
    TResult Function(int page)? reqAnimateBoardTo,
    TResult Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult Function()? reqExportCsv,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqProjectData value) reqProjectData,
    required TResult Function(ReqAnimateBoardTo value) reqAnimateBoardTo,
    required TResult Function(ReqTaskMove value) reqTaskMove,
    required TResult Function(ReqExportCsv value) reqExportCsv,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqProjectData value)? reqProjectData,
    TResult? Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult? Function(ReqTaskMove value)? reqTaskMove,
    TResult? Function(ReqExportCsv value)? reqExportCsv,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqProjectData value)? reqProjectData,
    TResult Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult Function(ReqTaskMove value)? reqTaskMove,
    TResult Function(ReqExportCsv value)? reqExportCsv,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BoardEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$ReqProjectDataCopyWith<$Res> {
  factory _$$ReqProjectDataCopyWith(
          _$ReqProjectData value, $Res Function(_$ReqProjectData) then) =
      __$$ReqProjectDataCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectEntities projectData});

  $ProjectEntitiesCopyWith<$Res> get projectData;
}

/// @nodoc
class __$$ReqProjectDataCopyWithImpl<$Res>
    extends _$BoardEventCopyWithImpl<$Res, _$ReqProjectData>
    implements _$$ReqProjectDataCopyWith<$Res> {
  __$$ReqProjectDataCopyWithImpl(
      _$ReqProjectData _value, $Res Function(_$ReqProjectData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectData = null,
  }) {
    return _then(_$ReqProjectData(
      projectData: null == projectData
          ? _value.projectData
          : projectData // ignore: cast_nullable_to_non_nullable
              as ProjectEntities,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectEntitiesCopyWith<$Res> get projectData {
    return $ProjectEntitiesCopyWith<$Res>(_value.projectData, (value) {
      return _then(_value.copyWith(projectData: value));
    });
  }
}

/// @nodoc

class _$ReqProjectData implements ReqProjectData {
  const _$ReqProjectData({required this.projectData});

  @override
  final ProjectEntities projectData;

  @override
  String toString() {
    return 'BoardEvent.reqProjectData(projectData: $projectData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqProjectData &&
            (identical(other.projectData, projectData) ||
                other.projectData == projectData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, projectData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqProjectDataCopyWith<_$ReqProjectData> get copyWith =>
      __$$ReqProjectDataCopyWithImpl<_$ReqProjectData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProjectEntities projectData) reqProjectData,
    required TResult Function(int page) reqAnimateBoardTo,
    required TResult Function(
            TaskEntities taskEntities, String boardDestination)
        reqTaskMove,
    required TResult Function() reqExportCsv,
  }) {
    return reqProjectData(projectData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProjectEntities projectData)? reqProjectData,
    TResult? Function(int page)? reqAnimateBoardTo,
    TResult? Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult? Function()? reqExportCsv,
  }) {
    return reqProjectData?.call(projectData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProjectEntities projectData)? reqProjectData,
    TResult Function(int page)? reqAnimateBoardTo,
    TResult Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult Function()? reqExportCsv,
    required TResult orElse(),
  }) {
    if (reqProjectData != null) {
      return reqProjectData(projectData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqProjectData value) reqProjectData,
    required TResult Function(ReqAnimateBoardTo value) reqAnimateBoardTo,
    required TResult Function(ReqTaskMove value) reqTaskMove,
    required TResult Function(ReqExportCsv value) reqExportCsv,
  }) {
    return reqProjectData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqProjectData value)? reqProjectData,
    TResult? Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult? Function(ReqTaskMove value)? reqTaskMove,
    TResult? Function(ReqExportCsv value)? reqExportCsv,
  }) {
    return reqProjectData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqProjectData value)? reqProjectData,
    TResult Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult Function(ReqTaskMove value)? reqTaskMove,
    TResult Function(ReqExportCsv value)? reqExportCsv,
    required TResult orElse(),
  }) {
    if (reqProjectData != null) {
      return reqProjectData(this);
    }
    return orElse();
  }
}

abstract class ReqProjectData implements BoardEvent {
  const factory ReqProjectData({required final ProjectEntities projectData}) =
      _$ReqProjectData;

  ProjectEntities get projectData;
  @JsonKey(ignore: true)
  _$$ReqProjectDataCopyWith<_$ReqProjectData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqAnimateBoardToCopyWith<$Res> {
  factory _$$ReqAnimateBoardToCopyWith(
          _$ReqAnimateBoardTo value, $Res Function(_$ReqAnimateBoardTo) then) =
      __$$ReqAnimateBoardToCopyWithImpl<$Res>;
  @useResult
  $Res call({int page});
}

/// @nodoc
class __$$ReqAnimateBoardToCopyWithImpl<$Res>
    extends _$BoardEventCopyWithImpl<$Res, _$ReqAnimateBoardTo>
    implements _$$ReqAnimateBoardToCopyWith<$Res> {
  __$$ReqAnimateBoardToCopyWithImpl(
      _$ReqAnimateBoardTo _value, $Res Function(_$ReqAnimateBoardTo) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
  }) {
    return _then(_$ReqAnimateBoardTo(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReqAnimateBoardTo implements ReqAnimateBoardTo {
  const _$ReqAnimateBoardTo(this.page);

  @override
  final int page;

  @override
  String toString() {
    return 'BoardEvent.reqAnimateBoardTo(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqAnimateBoardTo &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqAnimateBoardToCopyWith<_$ReqAnimateBoardTo> get copyWith =>
      __$$ReqAnimateBoardToCopyWithImpl<_$ReqAnimateBoardTo>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProjectEntities projectData) reqProjectData,
    required TResult Function(int page) reqAnimateBoardTo,
    required TResult Function(
            TaskEntities taskEntities, String boardDestination)
        reqTaskMove,
    required TResult Function() reqExportCsv,
  }) {
    return reqAnimateBoardTo(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProjectEntities projectData)? reqProjectData,
    TResult? Function(int page)? reqAnimateBoardTo,
    TResult? Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult? Function()? reqExportCsv,
  }) {
    return reqAnimateBoardTo?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProjectEntities projectData)? reqProjectData,
    TResult Function(int page)? reqAnimateBoardTo,
    TResult Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult Function()? reqExportCsv,
    required TResult orElse(),
  }) {
    if (reqAnimateBoardTo != null) {
      return reqAnimateBoardTo(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqProjectData value) reqProjectData,
    required TResult Function(ReqAnimateBoardTo value) reqAnimateBoardTo,
    required TResult Function(ReqTaskMove value) reqTaskMove,
    required TResult Function(ReqExportCsv value) reqExportCsv,
  }) {
    return reqAnimateBoardTo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqProjectData value)? reqProjectData,
    TResult? Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult? Function(ReqTaskMove value)? reqTaskMove,
    TResult? Function(ReqExportCsv value)? reqExportCsv,
  }) {
    return reqAnimateBoardTo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqProjectData value)? reqProjectData,
    TResult Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult Function(ReqTaskMove value)? reqTaskMove,
    TResult Function(ReqExportCsv value)? reqExportCsv,
    required TResult orElse(),
  }) {
    if (reqAnimateBoardTo != null) {
      return reqAnimateBoardTo(this);
    }
    return orElse();
  }
}

abstract class ReqAnimateBoardTo implements BoardEvent {
  const factory ReqAnimateBoardTo(final int page) = _$ReqAnimateBoardTo;

  int get page;
  @JsonKey(ignore: true)
  _$$ReqAnimateBoardToCopyWith<_$ReqAnimateBoardTo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqTaskMoveCopyWith<$Res> {
  factory _$$ReqTaskMoveCopyWith(
          _$ReqTaskMove value, $Res Function(_$ReqTaskMove) then) =
      __$$ReqTaskMoveCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntities taskEntities, String boardDestination});

  $TaskEntitiesCopyWith<$Res> get taskEntities;
}

/// @nodoc
class __$$ReqTaskMoveCopyWithImpl<$Res>
    extends _$BoardEventCopyWithImpl<$Res, _$ReqTaskMove>
    implements _$$ReqTaskMoveCopyWith<$Res> {
  __$$ReqTaskMoveCopyWithImpl(
      _$ReqTaskMove _value, $Res Function(_$ReqTaskMove) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskEntities = null,
    Object? boardDestination = null,
  }) {
    return _then(_$ReqTaskMove(
      null == taskEntities
          ? _value.taskEntities
          : taskEntities // ignore: cast_nullable_to_non_nullable
              as TaskEntities,
      null == boardDestination
          ? _value.boardDestination
          : boardDestination // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskEntitiesCopyWith<$Res> get taskEntities {
    return $TaskEntitiesCopyWith<$Res>(_value.taskEntities, (value) {
      return _then(_value.copyWith(taskEntities: value));
    });
  }
}

/// @nodoc

class _$ReqTaskMove implements ReqTaskMove {
  const _$ReqTaskMove(this.taskEntities, this.boardDestination);

  @override
  final TaskEntities taskEntities;
  @override
  final String boardDestination;

  @override
  String toString() {
    return 'BoardEvent.reqTaskMove(taskEntities: $taskEntities, boardDestination: $boardDestination)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqTaskMove &&
            (identical(other.taskEntities, taskEntities) ||
                other.taskEntities == taskEntities) &&
            (identical(other.boardDestination, boardDestination) ||
                other.boardDestination == boardDestination));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskEntities, boardDestination);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqTaskMoveCopyWith<_$ReqTaskMove> get copyWith =>
      __$$ReqTaskMoveCopyWithImpl<_$ReqTaskMove>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProjectEntities projectData) reqProjectData,
    required TResult Function(int page) reqAnimateBoardTo,
    required TResult Function(
            TaskEntities taskEntities, String boardDestination)
        reqTaskMove,
    required TResult Function() reqExportCsv,
  }) {
    return reqTaskMove(taskEntities, boardDestination);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProjectEntities projectData)? reqProjectData,
    TResult? Function(int page)? reqAnimateBoardTo,
    TResult? Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult? Function()? reqExportCsv,
  }) {
    return reqTaskMove?.call(taskEntities, boardDestination);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProjectEntities projectData)? reqProjectData,
    TResult Function(int page)? reqAnimateBoardTo,
    TResult Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult Function()? reqExportCsv,
    required TResult orElse(),
  }) {
    if (reqTaskMove != null) {
      return reqTaskMove(taskEntities, boardDestination);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqProjectData value) reqProjectData,
    required TResult Function(ReqAnimateBoardTo value) reqAnimateBoardTo,
    required TResult Function(ReqTaskMove value) reqTaskMove,
    required TResult Function(ReqExportCsv value) reqExportCsv,
  }) {
    return reqTaskMove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqProjectData value)? reqProjectData,
    TResult? Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult? Function(ReqTaskMove value)? reqTaskMove,
    TResult? Function(ReqExportCsv value)? reqExportCsv,
  }) {
    return reqTaskMove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqProjectData value)? reqProjectData,
    TResult Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult Function(ReqTaskMove value)? reqTaskMove,
    TResult Function(ReqExportCsv value)? reqExportCsv,
    required TResult orElse(),
  }) {
    if (reqTaskMove != null) {
      return reqTaskMove(this);
    }
    return orElse();
  }
}

abstract class ReqTaskMove implements BoardEvent {
  const factory ReqTaskMove(
          final TaskEntities taskEntities, final String boardDestination) =
      _$ReqTaskMove;

  TaskEntities get taskEntities;
  String get boardDestination;
  @JsonKey(ignore: true)
  _$$ReqTaskMoveCopyWith<_$ReqTaskMove> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqExportCsvCopyWith<$Res> {
  factory _$$ReqExportCsvCopyWith(
          _$ReqExportCsv value, $Res Function(_$ReqExportCsv) then) =
      __$$ReqExportCsvCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReqExportCsvCopyWithImpl<$Res>
    extends _$BoardEventCopyWithImpl<$Res, _$ReqExportCsv>
    implements _$$ReqExportCsvCopyWith<$Res> {
  __$$ReqExportCsvCopyWithImpl(
      _$ReqExportCsv _value, $Res Function(_$ReqExportCsv) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReqExportCsv implements ReqExportCsv {
  const _$ReqExportCsv();

  @override
  String toString() {
    return 'BoardEvent.reqExportCsv()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReqExportCsv);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(ProjectEntities projectData) reqProjectData,
    required TResult Function(int page) reqAnimateBoardTo,
    required TResult Function(
            TaskEntities taskEntities, String boardDestination)
        reqTaskMove,
    required TResult Function() reqExportCsv,
  }) {
    return reqExportCsv();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(ProjectEntities projectData)? reqProjectData,
    TResult? Function(int page)? reqAnimateBoardTo,
    TResult? Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult? Function()? reqExportCsv,
  }) {
    return reqExportCsv?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(ProjectEntities projectData)? reqProjectData,
    TResult Function(int page)? reqAnimateBoardTo,
    TResult Function(TaskEntities taskEntities, String boardDestination)?
        reqTaskMove,
    TResult Function()? reqExportCsv,
    required TResult orElse(),
  }) {
    if (reqExportCsv != null) {
      return reqExportCsv();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqProjectData value) reqProjectData,
    required TResult Function(ReqAnimateBoardTo value) reqAnimateBoardTo,
    required TResult Function(ReqTaskMove value) reqTaskMove,
    required TResult Function(ReqExportCsv value) reqExportCsv,
  }) {
    return reqExportCsv(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqProjectData value)? reqProjectData,
    TResult? Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult? Function(ReqTaskMove value)? reqTaskMove,
    TResult? Function(ReqExportCsv value)? reqExportCsv,
  }) {
    return reqExportCsv?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqProjectData value)? reqProjectData,
    TResult Function(ReqAnimateBoardTo value)? reqAnimateBoardTo,
    TResult Function(ReqTaskMove value)? reqTaskMove,
    TResult Function(ReqExportCsv value)? reqExportCsv,
    required TResult orElse(),
  }) {
    if (reqExportCsv != null) {
      return reqExportCsv(this);
    }
    return orElse();
  }
}

abstract class ReqExportCsv implements BoardEvent {
  const factory ReqExportCsv() = _$ReqExportCsv;
}

/// @nodoc
mixin _$BoardState {
  EnumBoardState get enumBoardState => throw _privateConstructorUsedError;
  CarouselController get carouselController =>
      throw _privateConstructorUsedError;
  bool get boardHover => throw _privateConstructorUsedError;
  ProjectEntities get projectEntities => throw _privateConstructorUsedError;
  BoardEntities get boardToDo => throw _privateConstructorUsedError;
  BoardEntities get boardInProgress => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BoardStateCopyWith<BoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardStateCopyWith<$Res> {
  factory $BoardStateCopyWith(
          BoardState value, $Res Function(BoardState) then) =
      _$BoardStateCopyWithImpl<$Res, BoardState>;
  @useResult
  $Res call(
      {EnumBoardState enumBoardState,
      CarouselController carouselController,
      bool boardHover,
      ProjectEntities projectEntities,
      BoardEntities boardToDo,
      BoardEntities boardInProgress});

  $ProjectEntitiesCopyWith<$Res> get projectEntities;
  $BoardEntitiesCopyWith<$Res> get boardToDo;
  $BoardEntitiesCopyWith<$Res> get boardInProgress;
}

/// @nodoc
class _$BoardStateCopyWithImpl<$Res, $Val extends BoardState>
    implements $BoardStateCopyWith<$Res> {
  _$BoardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumBoardState = null,
    Object? carouselController = null,
    Object? boardHover = null,
    Object? projectEntities = null,
    Object? boardToDo = null,
    Object? boardInProgress = null,
  }) {
    return _then(_value.copyWith(
      enumBoardState: null == enumBoardState
          ? _value.enumBoardState
          : enumBoardState // ignore: cast_nullable_to_non_nullable
              as EnumBoardState,
      carouselController: null == carouselController
          ? _value.carouselController
          : carouselController // ignore: cast_nullable_to_non_nullable
              as CarouselController,
      boardHover: null == boardHover
          ? _value.boardHover
          : boardHover // ignore: cast_nullable_to_non_nullable
              as bool,
      projectEntities: null == projectEntities
          ? _value.projectEntities
          : projectEntities // ignore: cast_nullable_to_non_nullable
              as ProjectEntities,
      boardToDo: null == boardToDo
          ? _value.boardToDo
          : boardToDo // ignore: cast_nullable_to_non_nullable
              as BoardEntities,
      boardInProgress: null == boardInProgress
          ? _value.boardInProgress
          : boardInProgress // ignore: cast_nullable_to_non_nullable
              as BoardEntities,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectEntitiesCopyWith<$Res> get projectEntities {
    return $ProjectEntitiesCopyWith<$Res>(_value.projectEntities, (value) {
      return _then(_value.copyWith(projectEntities: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardEntitiesCopyWith<$Res> get boardToDo {
    return $BoardEntitiesCopyWith<$Res>(_value.boardToDo, (value) {
      return _then(_value.copyWith(boardToDo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardEntitiesCopyWith<$Res> get boardInProgress {
    return $BoardEntitiesCopyWith<$Res>(_value.boardInProgress, (value) {
      return _then(_value.copyWith(boardInProgress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BoardStateCopyWith<$Res>
    implements $BoardStateCopyWith<$Res> {
  factory _$$_BoardStateCopyWith(
          _$_BoardState value, $Res Function(_$_BoardState) then) =
      __$$_BoardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumBoardState enumBoardState,
      CarouselController carouselController,
      bool boardHover,
      ProjectEntities projectEntities,
      BoardEntities boardToDo,
      BoardEntities boardInProgress});

  @override
  $ProjectEntitiesCopyWith<$Res> get projectEntities;
  @override
  $BoardEntitiesCopyWith<$Res> get boardToDo;
  @override
  $BoardEntitiesCopyWith<$Res> get boardInProgress;
}

/// @nodoc
class __$$_BoardStateCopyWithImpl<$Res>
    extends _$BoardStateCopyWithImpl<$Res, _$_BoardState>
    implements _$$_BoardStateCopyWith<$Res> {
  __$$_BoardStateCopyWithImpl(
      _$_BoardState _value, $Res Function(_$_BoardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumBoardState = null,
    Object? carouselController = null,
    Object? boardHover = null,
    Object? projectEntities = null,
    Object? boardToDo = null,
    Object? boardInProgress = null,
  }) {
    return _then(_$_BoardState(
      enumBoardState: null == enumBoardState
          ? _value.enumBoardState
          : enumBoardState // ignore: cast_nullable_to_non_nullable
              as EnumBoardState,
      carouselController: null == carouselController
          ? _value.carouselController
          : carouselController // ignore: cast_nullable_to_non_nullable
              as CarouselController,
      boardHover: null == boardHover
          ? _value.boardHover
          : boardHover // ignore: cast_nullable_to_non_nullable
              as bool,
      projectEntities: null == projectEntities
          ? _value.projectEntities
          : projectEntities // ignore: cast_nullable_to_non_nullable
              as ProjectEntities,
      boardToDo: null == boardToDo
          ? _value.boardToDo
          : boardToDo // ignore: cast_nullable_to_non_nullable
              as BoardEntities,
      boardInProgress: null == boardInProgress
          ? _value.boardInProgress
          : boardInProgress // ignore: cast_nullable_to_non_nullable
              as BoardEntities,
    ));
  }
}

/// @nodoc

class _$_BoardState extends _BoardState {
  _$_BoardState(
      {required this.enumBoardState,
      required this.carouselController,
      required this.boardHover,
      required this.projectEntities,
      required this.boardToDo,
      required this.boardInProgress})
      : super._();

  @override
  final EnumBoardState enumBoardState;
  @override
  final CarouselController carouselController;
  @override
  final bool boardHover;
  @override
  final ProjectEntities projectEntities;
  @override
  final BoardEntities boardToDo;
  @override
  final BoardEntities boardInProgress;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoardStateCopyWith<_$_BoardState> get copyWith =>
      __$$_BoardStateCopyWithImpl<_$_BoardState>(this, _$identity);
}

abstract class _BoardState extends BoardState {
  factory _BoardState(
      {required final EnumBoardState enumBoardState,
      required final CarouselController carouselController,
      required final bool boardHover,
      required final ProjectEntities projectEntities,
      required final BoardEntities boardToDo,
      required final BoardEntities boardInProgress}) = _$_BoardState;
  _BoardState._() : super._();

  @override
  EnumBoardState get enumBoardState;
  @override
  CarouselController get carouselController;
  @override
  bool get boardHover;
  @override
  ProjectEntities get projectEntities;
  @override
  BoardEntities get boardToDo;
  @override
  BoardEntities get boardInProgress;
  @override
  @JsonKey(ignore: true)
  _$$_BoardStateCopyWith<_$_BoardState> get copyWith =>
      throw _privateConstructorUsedError;
}
