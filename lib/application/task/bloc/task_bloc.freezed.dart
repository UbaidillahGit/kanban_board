// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

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
    extends _$TaskEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TaskEvent.started()';
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
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
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
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TaskEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$ReqSetBoardNameCopyWith<$Res> {
  factory _$$ReqSetBoardNameCopyWith(
          _$ReqSetBoardName value, $Res Function(_$ReqSetBoardName) then) =
      __$$ReqSetBoardNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String boardName});
}

/// @nodoc
class __$$ReqSetBoardNameCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqSetBoardName>
    implements _$$ReqSetBoardNameCopyWith<$Res> {
  __$$ReqSetBoardNameCopyWithImpl(
      _$ReqSetBoardName _value, $Res Function(_$ReqSetBoardName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? boardName = null,
  }) {
    return _then(_$ReqSetBoardName(
      null == boardName
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReqSetBoardName implements ReqSetBoardName {
  const _$ReqSetBoardName(this.boardName);

  @override
  final String boardName;

  @override
  String toString() {
    return 'TaskEvent.reqSetBoardName(boardName: $boardName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqSetBoardName &&
            (identical(other.boardName, boardName) ||
                other.boardName == boardName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, boardName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqSetBoardNameCopyWith<_$ReqSetBoardName> get copyWith =>
      __$$ReqSetBoardNameCopyWithImpl<_$ReqSetBoardName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqSetBoardName(boardName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqSetBoardName?.call(boardName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqSetBoardName != null) {
      return reqSetBoardName(boardName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqSetBoardName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqSetBoardName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqSetBoardName != null) {
      return reqSetBoardName(this);
    }
    return orElse();
  }
}

abstract class ReqSetBoardName implements TaskEvent {
  const factory ReqSetBoardName(final String boardName) = _$ReqSetBoardName;

  String get boardName;
  @JsonKey(ignore: true)
  _$$ReqSetBoardNameCopyWith<_$ReqSetBoardName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqOnChangedTaskNameCopyWith<$Res> {
  factory _$$ReqOnChangedTaskNameCopyWith(_$ReqOnChangedTaskName value,
          $Res Function(_$ReqOnChangedTaskName) then) =
      __$$ReqOnChangedTaskNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskName});
}

/// @nodoc
class __$$ReqOnChangedTaskNameCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqOnChangedTaskName>
    implements _$$ReqOnChangedTaskNameCopyWith<$Res> {
  __$$ReqOnChangedTaskNameCopyWithImpl(_$ReqOnChangedTaskName _value,
      $Res Function(_$ReqOnChangedTaskName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = null,
  }) {
    return _then(_$ReqOnChangedTaskName(
      null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReqOnChangedTaskName implements ReqOnChangedTaskName {
  const _$ReqOnChangedTaskName(this.taskName);

  @override
  final String taskName;

  @override
  String toString() {
    return 'TaskEvent.reqOnChangedTaskName(taskName: $taskName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqOnChangedTaskName &&
            (identical(other.taskName, taskName) ||
                other.taskName == taskName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqOnChangedTaskNameCopyWith<_$ReqOnChangedTaskName> get copyWith =>
      __$$ReqOnChangedTaskNameCopyWithImpl<_$ReqOnChangedTaskName>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqOnChangedTaskName(taskName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqOnChangedTaskName?.call(taskName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqOnChangedTaskName != null) {
      return reqOnChangedTaskName(taskName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqOnChangedTaskName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqOnChangedTaskName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqOnChangedTaskName != null) {
      return reqOnChangedTaskName(this);
    }
    return orElse();
  }
}

abstract class ReqOnChangedTaskName implements TaskEvent {
  const factory ReqOnChangedTaskName(final String taskName) =
      _$ReqOnChangedTaskName;

  String get taskName;
  @JsonKey(ignore: true)
  _$$ReqOnChangedTaskNameCopyWith<_$ReqOnChangedTaskName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqOnChangedTaskDescriptionCopyWith<$Res> {
  factory _$$ReqOnChangedTaskDescriptionCopyWith(
          _$ReqOnChangedTaskDescription value,
          $Res Function(_$ReqOnChangedTaskDescription) then) =
      __$$ReqOnChangedTaskDescriptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String taskDescription});
}

/// @nodoc
class __$$ReqOnChangedTaskDescriptionCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqOnChangedTaskDescription>
    implements _$$ReqOnChangedTaskDescriptionCopyWith<$Res> {
  __$$ReqOnChangedTaskDescriptionCopyWithImpl(
      _$ReqOnChangedTaskDescription _value,
      $Res Function(_$ReqOnChangedTaskDescription) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskDescription = null,
  }) {
    return _then(_$ReqOnChangedTaskDescription(
      null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReqOnChangedTaskDescription implements ReqOnChangedTaskDescription {
  const _$ReqOnChangedTaskDescription(this.taskDescription);

  @override
  final String taskDescription;

  @override
  String toString() {
    return 'TaskEvent.reqOnChangedTaskDescription(taskDescription: $taskDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqOnChangedTaskDescription &&
            (identical(other.taskDescription, taskDescription) ||
                other.taskDescription == taskDescription));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqOnChangedTaskDescriptionCopyWith<_$ReqOnChangedTaskDescription>
      get copyWith => __$$ReqOnChangedTaskDescriptionCopyWithImpl<
          _$ReqOnChangedTaskDescription>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqOnChangedTaskDescription(taskDescription);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqOnChangedTaskDescription?.call(taskDescription);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqOnChangedTaskDescription != null) {
      return reqOnChangedTaskDescription(taskDescription);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqOnChangedTaskDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqOnChangedTaskDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqOnChangedTaskDescription != null) {
      return reqOnChangedTaskDescription(this);
    }
    return orElse();
  }
}

abstract class ReqOnChangedTaskDescription implements TaskEvent {
  const factory ReqOnChangedTaskDescription(final String taskDescription) =
      _$ReqOnChangedTaskDescription;

  String get taskDescription;
  @JsonKey(ignore: true)
  _$$ReqOnChangedTaskDescriptionCopyWith<_$ReqOnChangedTaskDescription>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqListCollaboratorCopyWith<$Res> {
  factory _$$ReqListCollaboratorCopyWith(_$ReqListCollaborator value,
          $Res Function(_$ReqListCollaborator) then) =
      __$$ReqListCollaboratorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReqListCollaboratorCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqListCollaborator>
    implements _$$ReqListCollaboratorCopyWith<$Res> {
  __$$ReqListCollaboratorCopyWithImpl(
      _$ReqListCollaborator _value, $Res Function(_$ReqListCollaborator) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReqListCollaborator implements ReqListCollaborator {
  const _$ReqListCollaborator();

  @override
  String toString() {
    return 'TaskEvent.reqListCollaborator()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReqListCollaborator);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqListCollaborator();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqListCollaborator?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqListCollaborator != null) {
      return reqListCollaborator();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqListCollaborator(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqListCollaborator?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqListCollaborator != null) {
      return reqListCollaborator(this);
    }
    return orElse();
  }
}

abstract class ReqListCollaborator implements TaskEvent {
  const factory ReqListCollaborator() = _$ReqListCollaborator;
}

/// @nodoc
abstract class _$$ReqSelectLabelCopyWith<$Res> {
  factory _$$ReqSelectLabelCopyWith(
          _$ReqSelectLabel value, $Res Function(_$ReqSelectLabel) then) =
      __$$ReqSelectLabelCopyWithImpl<$Res>;
  @useResult
  $Res call({String labelId});
}

/// @nodoc
class __$$ReqSelectLabelCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqSelectLabel>
    implements _$$ReqSelectLabelCopyWith<$Res> {
  __$$ReqSelectLabelCopyWithImpl(
      _$ReqSelectLabel _value, $Res Function(_$ReqSelectLabel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? labelId = null,
  }) {
    return _then(_$ReqSelectLabel(
      null == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReqSelectLabel implements ReqSelectLabel {
  const _$ReqSelectLabel(this.labelId);

  @override
  final String labelId;

  @override
  String toString() {
    return 'TaskEvent.reqSelectLabel(labelId: $labelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqSelectLabel &&
            (identical(other.labelId, labelId) || other.labelId == labelId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, labelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqSelectLabelCopyWith<_$ReqSelectLabel> get copyWith =>
      __$$ReqSelectLabelCopyWithImpl<_$ReqSelectLabel>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqSelectLabel(labelId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqSelectLabel?.call(labelId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqSelectLabel != null) {
      return reqSelectLabel(labelId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqSelectLabel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqSelectLabel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqSelectLabel != null) {
      return reqSelectLabel(this);
    }
    return orElse();
  }
}

abstract class ReqSelectLabel implements TaskEvent {
  const factory ReqSelectLabel(final String labelId) = _$ReqSelectLabel;

  String get labelId;
  @JsonKey(ignore: true)
  _$$ReqSelectLabelCopyWith<_$ReqSelectLabel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqSelectAssigneeCopyWith<$Res> {
  factory _$$ReqSelectAssigneeCopyWith(
          _$ReqSelectAssignee value, $Res Function(_$ReqSelectAssignee) then) =
      __$$ReqSelectAssigneeCopyWithImpl<$Res>;
  @useResult
  $Res call({CollaboratorEntities collaboratorEntities});

  $CollaboratorEntitiesCopyWith<$Res> get collaboratorEntities;
}

/// @nodoc
class __$$ReqSelectAssigneeCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqSelectAssignee>
    implements _$$ReqSelectAssigneeCopyWith<$Res> {
  __$$ReqSelectAssigneeCopyWithImpl(
      _$ReqSelectAssignee _value, $Res Function(_$ReqSelectAssignee) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collaboratorEntities = null,
  }) {
    return _then(_$ReqSelectAssignee(
      null == collaboratorEntities
          ? _value.collaboratorEntities
          : collaboratorEntities // ignore: cast_nullable_to_non_nullable
              as CollaboratorEntities,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $CollaboratorEntitiesCopyWith<$Res> get collaboratorEntities {
    return $CollaboratorEntitiesCopyWith<$Res>(_value.collaboratorEntities,
        (value) {
      return _then(_value.copyWith(collaboratorEntities: value));
    });
  }
}

/// @nodoc

class _$ReqSelectAssignee implements ReqSelectAssignee {
  const _$ReqSelectAssignee(this.collaboratorEntities);

  @override
  final CollaboratorEntities collaboratorEntities;

  @override
  String toString() {
    return 'TaskEvent.reqSelectAssignee(collaboratorEntities: $collaboratorEntities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqSelectAssignee &&
            (identical(other.collaboratorEntities, collaboratorEntities) ||
                other.collaboratorEntities == collaboratorEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collaboratorEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqSelectAssigneeCopyWith<_$ReqSelectAssignee> get copyWith =>
      __$$ReqSelectAssigneeCopyWithImpl<_$ReqSelectAssignee>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqSelectAssignee(collaboratorEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqSelectAssignee?.call(collaboratorEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqSelectAssignee != null) {
      return reqSelectAssignee(collaboratorEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqSelectAssignee(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqSelectAssignee?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqSelectAssignee != null) {
      return reqSelectAssignee(this);
    }
    return orElse();
  }
}

abstract class ReqSelectAssignee implements TaskEvent {
  const factory ReqSelectAssignee(
      final CollaboratorEntities collaboratorEntities) = _$ReqSelectAssignee;

  CollaboratorEntities get collaboratorEntities;
  @JsonKey(ignore: true)
  _$$ReqSelectAssigneeCopyWith<_$ReqSelectAssignee> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqCreateTaskCopyWith<$Res> {
  factory _$$ReqCreateTaskCopyWith(
          _$ReqCreateTask value, $Res Function(_$ReqCreateTask) then) =
      __$$ReqCreateTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReqCreateTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqCreateTask>
    implements _$$ReqCreateTaskCopyWith<$Res> {
  __$$ReqCreateTaskCopyWithImpl(
      _$ReqCreateTask _value, $Res Function(_$ReqCreateTask) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReqCreateTask implements ReqCreateTask {
  const _$ReqCreateTask();

  @override
  String toString() {
    return 'TaskEvent.reqCreateTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReqCreateTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqCreateTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqCreateTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqCreateTask != null) {
      return reqCreateTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqCreateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqCreateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqCreateTask != null) {
      return reqCreateTask(this);
    }
    return orElse();
  }
}

abstract class ReqCreateTask implements TaskEvent {
  const factory ReqCreateTask() = _$ReqCreateTask;
}

/// @nodoc
abstract class _$$ReqEditTaskCopyWith<$Res> {
  factory _$$ReqEditTaskCopyWith(
          _$ReqEditTask value, $Res Function(_$ReqEditTask) then) =
      __$$ReqEditTaskCopyWithImpl<$Res>;
  @useResult
  $Res call({int taskIdx, TaskEntities taskEntities});

  $TaskEntitiesCopyWith<$Res> get taskEntities;
}

/// @nodoc
class __$$ReqEditTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqEditTask>
    implements _$$ReqEditTaskCopyWith<$Res> {
  __$$ReqEditTaskCopyWithImpl(
      _$ReqEditTask _value, $Res Function(_$ReqEditTask) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskIdx = null,
    Object? taskEntities = null,
  }) {
    return _then(_$ReqEditTask(
      null == taskIdx
          ? _value.taskIdx
          : taskIdx // ignore: cast_nullable_to_non_nullable
              as int,
      null == taskEntities
          ? _value.taskEntities
          : taskEntities // ignore: cast_nullable_to_non_nullable
              as TaskEntities,
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

class _$ReqEditTask implements ReqEditTask {
  const _$ReqEditTask(this.taskIdx, this.taskEntities);

  @override
  final int taskIdx;
  @override
  final TaskEntities taskEntities;

  @override
  String toString() {
    return 'TaskEvent.reqEditTask(taskIdx: $taskIdx, taskEntities: $taskEntities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqEditTask &&
            (identical(other.taskIdx, taskIdx) || other.taskIdx == taskIdx) &&
            (identical(other.taskEntities, taskEntities) ||
                other.taskEntities == taskEntities));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskIdx, taskEntities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqEditTaskCopyWith<_$ReqEditTask> get copyWith =>
      __$$ReqEditTaskCopyWithImpl<_$ReqEditTask>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqEditTask(taskIdx, taskEntities);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqEditTask?.call(taskIdx, taskEntities);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqEditTask != null) {
      return reqEditTask(taskIdx, taskEntities);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqEditTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqEditTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqEditTask != null) {
      return reqEditTask(this);
    }
    return orElse();
  }
}

abstract class ReqEditTask implements TaskEvent {
  const factory ReqEditTask(
      final int taskIdx, final TaskEntities taskEntities) = _$ReqEditTask;

  int get taskIdx;
  TaskEntities get taskEntities;
  @JsonKey(ignore: true)
  _$$ReqEditTaskCopyWith<_$ReqEditTask> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqUpdateTaskCopyWith<$Res> {
  factory _$$ReqUpdateTaskCopyWith(
          _$ReqUpdateTask value, $Res Function(_$ReqUpdateTask) then) =
      __$$ReqUpdateTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReqUpdateTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqUpdateTask>
    implements _$$ReqUpdateTaskCopyWith<$Res> {
  __$$ReqUpdateTaskCopyWithImpl(
      _$ReqUpdateTask _value, $Res Function(_$ReqUpdateTask) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReqUpdateTask implements ReqUpdateTask {
  const _$ReqUpdateTask();

  @override
  String toString() {
    return 'TaskEvent.reqUpdateTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReqUpdateTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqUpdateTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqUpdateTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqUpdateTask != null) {
      return reqUpdateTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqUpdateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqUpdateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqUpdateTask != null) {
      return reqUpdateTask(this);
    }
    return orElse();
  }
}

abstract class ReqUpdateTask implements TaskEvent {
  const factory ReqUpdateTask() = _$ReqUpdateTask;
}

/// @nodoc
abstract class _$$ReqDeleteTaskCopyWith<$Res> {
  factory _$$ReqDeleteTaskCopyWith(
          _$ReqDeleteTask value, $Res Function(_$ReqDeleteTask) then) =
      __$$ReqDeleteTaskCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReqDeleteTaskCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReqDeleteTask>
    implements _$$ReqDeleteTaskCopyWith<$Res> {
  __$$ReqDeleteTaskCopyWithImpl(
      _$ReqDeleteTask _value, $Res Function(_$ReqDeleteTask) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReqDeleteTask implements ReqDeleteTask {
  const _$ReqDeleteTask();

  @override
  String toString() {
    return 'TaskEvent.reqDeleteTask()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReqDeleteTask);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String boardName) reqSetBoardName,
    required TResult Function(String taskName) reqOnChangedTaskName,
    required TResult Function(String taskDescription)
        reqOnChangedTaskDescription,
    required TResult Function() reqListCollaborator,
    required TResult Function(String labelId) reqSelectLabel,
    required TResult Function(CollaboratorEntities collaboratorEntities)
        reqSelectAssignee,
    required TResult Function() reqCreateTask,
    required TResult Function(int taskIdx, TaskEntities taskEntities)
        reqEditTask,
    required TResult Function() reqUpdateTask,
    required TResult Function() reqDeleteTask,
  }) {
    return reqDeleteTask();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String boardName)? reqSetBoardName,
    TResult? Function(String taskName)? reqOnChangedTaskName,
    TResult? Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult? Function()? reqListCollaborator,
    TResult? Function(String labelId)? reqSelectLabel,
    TResult? Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult? Function()? reqCreateTask,
    TResult? Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult? Function()? reqUpdateTask,
    TResult? Function()? reqDeleteTask,
  }) {
    return reqDeleteTask?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String boardName)? reqSetBoardName,
    TResult Function(String taskName)? reqOnChangedTaskName,
    TResult Function(String taskDescription)? reqOnChangedTaskDescription,
    TResult Function()? reqListCollaborator,
    TResult Function(String labelId)? reqSelectLabel,
    TResult Function(CollaboratorEntities collaboratorEntities)?
        reqSelectAssignee,
    TResult Function()? reqCreateTask,
    TResult Function(int taskIdx, TaskEntities taskEntities)? reqEditTask,
    TResult Function()? reqUpdateTask,
    TResult Function()? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqDeleteTask != null) {
      return reqDeleteTask();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ReqSetBoardName value) reqSetBoardName,
    required TResult Function(ReqOnChangedTaskName value) reqOnChangedTaskName,
    required TResult Function(ReqOnChangedTaskDescription value)
        reqOnChangedTaskDescription,
    required TResult Function(ReqListCollaborator value) reqListCollaborator,
    required TResult Function(ReqSelectLabel value) reqSelectLabel,
    required TResult Function(ReqSelectAssignee value) reqSelectAssignee,
    required TResult Function(ReqCreateTask value) reqCreateTask,
    required TResult Function(ReqEditTask value) reqEditTask,
    required TResult Function(ReqUpdateTask value) reqUpdateTask,
    required TResult Function(ReqDeleteTask value) reqDeleteTask,
  }) {
    return reqDeleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ReqSetBoardName value)? reqSetBoardName,
    TResult? Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult? Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult? Function(ReqListCollaborator value)? reqListCollaborator,
    TResult? Function(ReqSelectLabel value)? reqSelectLabel,
    TResult? Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult? Function(ReqCreateTask value)? reqCreateTask,
    TResult? Function(ReqEditTask value)? reqEditTask,
    TResult? Function(ReqUpdateTask value)? reqUpdateTask,
    TResult? Function(ReqDeleteTask value)? reqDeleteTask,
  }) {
    return reqDeleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ReqSetBoardName value)? reqSetBoardName,
    TResult Function(ReqOnChangedTaskName value)? reqOnChangedTaskName,
    TResult Function(ReqOnChangedTaskDescription value)?
        reqOnChangedTaskDescription,
    TResult Function(ReqListCollaborator value)? reqListCollaborator,
    TResult Function(ReqSelectLabel value)? reqSelectLabel,
    TResult Function(ReqSelectAssignee value)? reqSelectAssignee,
    TResult Function(ReqCreateTask value)? reqCreateTask,
    TResult Function(ReqEditTask value)? reqEditTask,
    TResult Function(ReqUpdateTask value)? reqUpdateTask,
    TResult Function(ReqDeleteTask value)? reqDeleteTask,
    required TResult orElse(),
  }) {
    if (reqDeleteTask != null) {
      return reqDeleteTask(this);
    }
    return orElse();
  }
}

abstract class ReqDeleteTask implements TaskEvent {
  const factory ReqDeleteTask() = _$ReqDeleteTask;
}

/// @nodoc
mixin _$TaskState {
  EnumTaskState get enumTaskState => throw _privateConstructorUsedError;
  String get boardName => throw _privateConstructorUsedError;
  TextEditingController get taskName => throw _privateConstructorUsedError;
  TextEditingController get taskDescription =>
      throw _privateConstructorUsedError;
  String get labelId => throw _privateConstructorUsedError;
  List<CollaboratorEntities> get listCollaborator =>
      throw _privateConstructorUsedError;
  String get emailAssignee => throw _privateConstructorUsedError;
  String? get errMsg => throw _privateConstructorUsedError;
  int? get taskIdx => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {EnumTaskState enumTaskState,
      String boardName,
      TextEditingController taskName,
      TextEditingController taskDescription,
      String labelId,
      List<CollaboratorEntities> listCollaborator,
      String emailAssignee,
      String? errMsg,
      int? taskIdx});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumTaskState = null,
    Object? boardName = null,
    Object? taskName = null,
    Object? taskDescription = null,
    Object? labelId = null,
    Object? listCollaborator = null,
    Object? emailAssignee = null,
    Object? errMsg = freezed,
    Object? taskIdx = freezed,
  }) {
    return _then(_value.copyWith(
      enumTaskState: null == enumTaskState
          ? _value.enumTaskState
          : enumTaskState // ignore: cast_nullable_to_non_nullable
              as EnumTaskState,
      boardName: null == boardName
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      labelId: null == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as String,
      listCollaborator: null == listCollaborator
          ? _value.listCollaborator
          : listCollaborator // ignore: cast_nullable_to_non_nullable
              as List<CollaboratorEntities>,
      emailAssignee: null == emailAssignee
          ? _value.emailAssignee
          : emailAssignee // ignore: cast_nullable_to_non_nullable
              as String,
      errMsg: freezed == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      taskIdx: freezed == taskIdx
          ? _value.taskIdx
          : taskIdx // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskStateCopyWith<$Res> implements $TaskStateCopyWith<$Res> {
  factory _$$_TaskStateCopyWith(
          _$_TaskState value, $Res Function(_$_TaskState) then) =
      __$$_TaskStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EnumTaskState enumTaskState,
      String boardName,
      TextEditingController taskName,
      TextEditingController taskDescription,
      String labelId,
      List<CollaboratorEntities> listCollaborator,
      String emailAssignee,
      String? errMsg,
      int? taskIdx});
}

/// @nodoc
class __$$_TaskStateCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$_TaskState>
    implements _$$_TaskStateCopyWith<$Res> {
  __$$_TaskStateCopyWithImpl(
      _$_TaskState _value, $Res Function(_$_TaskState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? enumTaskState = null,
    Object? boardName = null,
    Object? taskName = null,
    Object? taskDescription = null,
    Object? labelId = null,
    Object? listCollaborator = null,
    Object? emailAssignee = null,
    Object? errMsg = freezed,
    Object? taskIdx = freezed,
  }) {
    return _then(_$_TaskState(
      enumTaskState: null == enumTaskState
          ? _value.enumTaskState
          : enumTaskState // ignore: cast_nullable_to_non_nullable
              as EnumTaskState,
      boardName: null == boardName
          ? _value.boardName
          : boardName // ignore: cast_nullable_to_non_nullable
              as String,
      taskName: null == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      taskDescription: null == taskDescription
          ? _value.taskDescription
          : taskDescription // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      labelId: null == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as String,
      listCollaborator: null == listCollaborator
          ? _value._listCollaborator
          : listCollaborator // ignore: cast_nullable_to_non_nullable
              as List<CollaboratorEntities>,
      emailAssignee: null == emailAssignee
          ? _value.emailAssignee
          : emailAssignee // ignore: cast_nullable_to_non_nullable
              as String,
      errMsg: freezed == errMsg
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String?,
      taskIdx: freezed == taskIdx
          ? _value.taskIdx
          : taskIdx // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_TaskState extends _TaskState {
  _$_TaskState(
      {required this.enumTaskState,
      required this.boardName,
      required this.taskName,
      required this.taskDescription,
      required this.labelId,
      required final List<CollaboratorEntities> listCollaborator,
      required this.emailAssignee,
      required this.errMsg,
      required this.taskIdx})
      : _listCollaborator = listCollaborator,
        super._();

  @override
  final EnumTaskState enumTaskState;
  @override
  final String boardName;
  @override
  final TextEditingController taskName;
  @override
  final TextEditingController taskDescription;
  @override
  final String labelId;
  final List<CollaboratorEntities> _listCollaborator;
  @override
  List<CollaboratorEntities> get listCollaborator {
    if (_listCollaborator is EqualUnmodifiableListView)
      return _listCollaborator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listCollaborator);
  }

  @override
  final String emailAssignee;
  @override
  final String? errMsg;
  @override
  final int? taskIdx;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      __$$_TaskStateCopyWithImpl<_$_TaskState>(this, _$identity);
}

abstract class _TaskState extends TaskState {
  factory _TaskState(
      {required final EnumTaskState enumTaskState,
      required final String boardName,
      required final TextEditingController taskName,
      required final TextEditingController taskDescription,
      required final String labelId,
      required final List<CollaboratorEntities> listCollaborator,
      required final String emailAssignee,
      required final String? errMsg,
      required final int? taskIdx}) = _$_TaskState;
  _TaskState._() : super._();

  @override
  EnumTaskState get enumTaskState;
  @override
  String get boardName;
  @override
  TextEditingController get taskName;
  @override
  TextEditingController get taskDescription;
  @override
  String get labelId;
  @override
  List<CollaboratorEntities> get listCollaborator;
  @override
  String get emailAssignee;
  @override
  String? get errMsg;
  @override
  int? get taskIdx;
  @override
  @JsonKey(ignore: true)
  _$$_TaskStateCopyWith<_$_TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}
