// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProjectList _$ProjectListFromJson(Map<String, dynamic> json) {
  return _ProjectList.fromJson(json);
}

/// @nodoc
mixin _$ProjectList {
  List<ProjectEntities>? get listData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectListCopyWith<ProjectList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectListCopyWith<$Res> {
  factory $ProjectListCopyWith(
          ProjectList value, $Res Function(ProjectList) then) =
      _$ProjectListCopyWithImpl<$Res, ProjectList>;
  @useResult
  $Res call({List<ProjectEntities>? listData});
}

/// @nodoc
class _$ProjectListCopyWithImpl<$Res, $Val extends ProjectList>
    implements $ProjectListCopyWith<$Res> {
  _$ProjectListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listData = freezed,
  }) {
    return _then(_value.copyWith(
      listData: freezed == listData
          ? _value.listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntities>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProjectListCopyWith<$Res>
    implements $ProjectListCopyWith<$Res> {
  factory _$$_ProjectListCopyWith(
          _$_ProjectList value, $Res Function(_$_ProjectList) then) =
      __$$_ProjectListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProjectEntities>? listData});
}

/// @nodoc
class __$$_ProjectListCopyWithImpl<$Res>
    extends _$ProjectListCopyWithImpl<$Res, _$_ProjectList>
    implements _$$_ProjectListCopyWith<$Res> {
  __$$_ProjectListCopyWithImpl(
      _$_ProjectList _value, $Res Function(_$_ProjectList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? listData = freezed,
  }) {
    return _then(_$_ProjectList(
      listData: freezed == listData
          ? _value._listData
          : listData // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntities>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectList with DiagnosticableTreeMixin implements _ProjectList {
  _$_ProjectList({final List<ProjectEntities>? listData})
      : _listData = listData;

  factory _$_ProjectList.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectListFromJson(json);

  final List<ProjectEntities>? _listData;
  @override
  List<ProjectEntities>? get listData {
    final value = _listData;
    if (value == null) return null;
    if (_listData is EqualUnmodifiableListView) return _listData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectList(listData: $listData)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectList'))
      ..add(DiagnosticsProperty('listData', listData));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProjectList &&
            const DeepCollectionEquality().equals(other._listData, _listData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_listData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectListCopyWith<_$_ProjectList> get copyWith =>
      __$$_ProjectListCopyWithImpl<_$_ProjectList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectListToJson(
      this,
    );
  }
}

abstract class _ProjectList implements ProjectList {
  factory _ProjectList({final List<ProjectEntities>? listData}) =
      _$_ProjectList;

  factory _ProjectList.fromJson(Map<String, dynamic> json) =
      _$_ProjectList.fromJson;

  @override
  List<ProjectEntities>? get listData;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectListCopyWith<_$_ProjectList> get copyWith =>
      throw _privateConstructorUsedError;
}

ProjectEntities _$ProjectEntitiesFromJson(Map<String, dynamic> json) {
  return _ProjectEntities.fromJson(json);
}

/// @nodoc
mixin _$ProjectEntities {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  set id(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  set name(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  set description(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  String? get owner => throw _privateConstructorUsedError;
  @JsonKey(name: 'owner')
  set owner(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'collaborator')
  List<CollaboratorEntities>? get collaborator =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'collaborator')
  set collaborator(List<CollaboratorEntities>? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'to_do')
  BoardEntities? get toDo => throw _privateConstructorUsedError;
  @JsonKey(name: 'to_do')
  set toDo(BoardEntities? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_progress')
  BoardEntities? get inProgress => throw _privateConstructorUsedError;
  @JsonKey(name: 'in_progress')
  set inProgress(BoardEntities? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'done')
  BoardEntities? get done => throw _privateConstructorUsedError;
  @JsonKey(name: 'done')
  set done(BoardEntities? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProjectEntitiesCopyWith<ProjectEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntitiesCopyWith<$Res> {
  factory $ProjectEntitiesCopyWith(
          ProjectEntities value, $Res Function(ProjectEntities) then) =
      _$ProjectEntitiesCopyWithImpl<$Res, ProjectEntities>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'collaborator') List<CollaboratorEntities>? collaborator,
      @JsonKey(name: 'to_do') BoardEntities? toDo,
      @JsonKey(name: 'in_progress') BoardEntities? inProgress,
      @JsonKey(name: 'done') BoardEntities? done});

  $BoardEntitiesCopyWith<$Res>? get toDo;
  $BoardEntitiesCopyWith<$Res>? get inProgress;
  $BoardEntitiesCopyWith<$Res>? get done;
}

/// @nodoc
class _$ProjectEntitiesCopyWithImpl<$Res, $Val extends ProjectEntities>
    implements $ProjectEntitiesCopyWith<$Res> {
  _$ProjectEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? owner = freezed,
    Object? collaborator = freezed,
    Object? toDo = freezed,
    Object? inProgress = freezed,
    Object? done = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      collaborator: freezed == collaborator
          ? _value.collaborator
          : collaborator // ignore: cast_nullable_to_non_nullable
              as List<CollaboratorEntities>?,
      toDo: freezed == toDo
          ? _value.toDo
          : toDo // ignore: cast_nullable_to_non_nullable
              as BoardEntities?,
      inProgress: freezed == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as BoardEntities?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as BoardEntities?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardEntitiesCopyWith<$Res>? get toDo {
    if (_value.toDo == null) {
      return null;
    }

    return $BoardEntitiesCopyWith<$Res>(_value.toDo!, (value) {
      return _then(_value.copyWith(toDo: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardEntitiesCopyWith<$Res>? get inProgress {
    if (_value.inProgress == null) {
      return null;
    }

    return $BoardEntitiesCopyWith<$Res>(_value.inProgress!, (value) {
      return _then(_value.copyWith(inProgress: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BoardEntitiesCopyWith<$Res>? get done {
    if (_value.done == null) {
      return null;
    }

    return $BoardEntitiesCopyWith<$Res>(_value.done!, (value) {
      return _then(_value.copyWith(done: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectEntitiesCopyWith<$Res>
    implements $ProjectEntitiesCopyWith<$Res> {
  factory _$$_ProjectEntitiesCopyWith(
          _$_ProjectEntities value, $Res Function(_$_ProjectEntities) then) =
      __$$_ProjectEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'collaborator') List<CollaboratorEntities>? collaborator,
      @JsonKey(name: 'to_do') BoardEntities? toDo,
      @JsonKey(name: 'in_progress') BoardEntities? inProgress,
      @JsonKey(name: 'done') BoardEntities? done});

  @override
  $BoardEntitiesCopyWith<$Res>? get toDo;
  @override
  $BoardEntitiesCopyWith<$Res>? get inProgress;
  @override
  $BoardEntitiesCopyWith<$Res>? get done;
}

/// @nodoc
class __$$_ProjectEntitiesCopyWithImpl<$Res>
    extends _$ProjectEntitiesCopyWithImpl<$Res, _$_ProjectEntities>
    implements _$$_ProjectEntitiesCopyWith<$Res> {
  __$$_ProjectEntitiesCopyWithImpl(
      _$_ProjectEntities _value, $Res Function(_$_ProjectEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? owner = freezed,
    Object? collaborator = freezed,
    Object? toDo = freezed,
    Object? inProgress = freezed,
    Object? done = freezed,
  }) {
    return _then(_$_ProjectEntities(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      collaborator: freezed == collaborator
          ? _value.collaborator
          : collaborator // ignore: cast_nullable_to_non_nullable
              as List<CollaboratorEntities>?,
      toDo: freezed == toDo
          ? _value.toDo
          : toDo // ignore: cast_nullable_to_non_nullable
              as BoardEntities?,
      inProgress: freezed == inProgress
          ? _value.inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as BoardEntities?,
      done: freezed == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as BoardEntities?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProjectEntities
    with DiagnosticableTreeMixin
    implements _ProjectEntities {
  _$_ProjectEntities(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'owner') this.owner,
      @JsonKey(name: 'collaborator') this.collaborator,
      @JsonKey(name: 'to_do') this.toDo,
      @JsonKey(name: 'in_progress') this.inProgress,
      @JsonKey(name: 'done') this.done});

  factory _$_ProjectEntities.fromJson(Map<String, dynamic> json) =>
      _$$_ProjectEntitiesFromJson(json);

  @override
  @JsonKey(name: 'id')
  String? id;
  @override
  @JsonKey(name: 'name')
  String? name;
  @override
  @JsonKey(name: 'description')
  String? description;
  @override
  @JsonKey(name: 'owner')
  String? owner;
  @override
  @JsonKey(name: 'collaborator')
  List<CollaboratorEntities>? collaborator;
  @override
  @JsonKey(name: 'to_do')
  BoardEntities? toDo;
  @override
  @JsonKey(name: 'in_progress')
  BoardEntities? inProgress;
  @override
  @JsonKey(name: 'done')
  BoardEntities? done;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProjectEntities(id: $id, name: $name, description: $description, owner: $owner, collaborator: $collaborator, toDo: $toDo, inProgress: $inProgress, done: $done)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProjectEntities'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('owner', owner))
      ..add(DiagnosticsProperty('collaborator', collaborator))
      ..add(DiagnosticsProperty('toDo', toDo))
      ..add(DiagnosticsProperty('inProgress', inProgress))
      ..add(DiagnosticsProperty('done', done));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectEntitiesCopyWith<_$_ProjectEntities> get copyWith =>
      __$$_ProjectEntitiesCopyWithImpl<_$_ProjectEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProjectEntitiesToJson(
      this,
    );
  }
}

abstract class _ProjectEntities implements ProjectEntities {
  factory _ProjectEntities(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'owner') String? owner,
      @JsonKey(name: 'collaborator') List<CollaboratorEntities>? collaborator,
      @JsonKey(name: 'to_do') BoardEntities? toDo,
      @JsonKey(name: 'in_progress') BoardEntities? inProgress,
      @JsonKey(name: 'done') BoardEntities? done}) = _$_ProjectEntities;

  factory _ProjectEntities.fromJson(Map<String, dynamic> json) =
      _$_ProjectEntities.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @JsonKey(name: 'id')
  set id(String? value);
  @override
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'name')
  set name(String? value);
  @override
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'description')
  set description(String? value);
  @override
  @JsonKey(name: 'owner')
  String? get owner;
  @JsonKey(name: 'owner')
  set owner(String? value);
  @override
  @JsonKey(name: 'collaborator')
  List<CollaboratorEntities>? get collaborator;
  @JsonKey(name: 'collaborator')
  set collaborator(List<CollaboratorEntities>? value);
  @override
  @JsonKey(name: 'to_do')
  BoardEntities? get toDo;
  @JsonKey(name: 'to_do')
  set toDo(BoardEntities? value);
  @override
  @JsonKey(name: 'in_progress')
  BoardEntities? get inProgress;
  @JsonKey(name: 'in_progress')
  set inProgress(BoardEntities? value);
  @override
  @JsonKey(name: 'done')
  BoardEntities? get done;
  @JsonKey(name: 'done')
  set done(BoardEntities? value);
  @override
  @JsonKey(ignore: true)
  _$$_ProjectEntitiesCopyWith<_$_ProjectEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

BoardEntities _$BoardEntitiesFromJson(Map<String, dynamic> json) {
  return _BoardEntities.fromJson(json);
}

/// @nodoc
mixin _$BoardEntities {
  @JsonKey(name: 'group_name')
  String? get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_name')
  set groupName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'tasks')
  List<TaskEntities>? get tasks => throw _privateConstructorUsedError;
  @JsonKey(name: 'tasks')
  set tasks(List<TaskEntities>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BoardEntitiesCopyWith<BoardEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BoardEntitiesCopyWith<$Res> {
  factory $BoardEntitiesCopyWith(
          BoardEntities value, $Res Function(BoardEntities) then) =
      _$BoardEntitiesCopyWithImpl<$Res, BoardEntities>;
  @useResult
  $Res call(
      {@JsonKey(name: 'group_name') String? groupName,
      @JsonKey(name: 'tasks') List<TaskEntities>? tasks});
}

/// @nodoc
class _$BoardEntitiesCopyWithImpl<$Res, $Val extends BoardEntities>
    implements $BoardEntitiesCopyWith<$Res> {
  _$BoardEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntities>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BoardEntitiesCopyWith<$Res>
    implements $BoardEntitiesCopyWith<$Res> {
  factory _$$_BoardEntitiesCopyWith(
          _$_BoardEntities value, $Res Function(_$_BoardEntities) then) =
      __$$_BoardEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'group_name') String? groupName,
      @JsonKey(name: 'tasks') List<TaskEntities>? tasks});
}

/// @nodoc
class __$$_BoardEntitiesCopyWithImpl<$Res>
    extends _$BoardEntitiesCopyWithImpl<$Res, _$_BoardEntities>
    implements _$$_BoardEntitiesCopyWith<$Res> {
  __$$_BoardEntitiesCopyWithImpl(
      _$_BoardEntities _value, $Res Function(_$_BoardEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = freezed,
    Object? tasks = freezed,
  }) {
    return _then(_$_BoardEntities(
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntities>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BoardEntities with DiagnosticableTreeMixin implements _BoardEntities {
  _$_BoardEntities(
      {@JsonKey(name: 'group_name') this.groupName,
      @JsonKey(name: 'tasks') this.tasks});

  factory _$_BoardEntities.fromJson(Map<String, dynamic> json) =>
      _$$_BoardEntitiesFromJson(json);

  @override
  @JsonKey(name: 'group_name')
  String? groupName;
  @override
  @JsonKey(name: 'tasks')
  List<TaskEntities>? tasks;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BoardEntities(groupName: $groupName, tasks: $tasks)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BoardEntities'))
      ..add(DiagnosticsProperty('groupName', groupName))
      ..add(DiagnosticsProperty('tasks', tasks));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BoardEntitiesCopyWith<_$_BoardEntities> get copyWith =>
      __$$_BoardEntitiesCopyWithImpl<_$_BoardEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BoardEntitiesToJson(
      this,
    );
  }
}

abstract class _BoardEntities implements BoardEntities {
  factory _BoardEntities(
      {@JsonKey(name: 'group_name') String? groupName,
      @JsonKey(name: 'tasks') List<TaskEntities>? tasks}) = _$_BoardEntities;

  factory _BoardEntities.fromJson(Map<String, dynamic> json) =
      _$_BoardEntities.fromJson;

  @override
  @JsonKey(name: 'group_name')
  String? get groupName;
  @JsonKey(name: 'group_name')
  set groupName(String? value);
  @override
  @JsonKey(name: 'tasks')
  List<TaskEntities>? get tasks;
  @JsonKey(name: 'tasks')
  set tasks(List<TaskEntities>? value);
  @override
  @JsonKey(ignore: true)
  _$$_BoardEntitiesCopyWith<_$_BoardEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

TaskEntities _$TaskEntitiesFromJson(Map<String, dynamic> json) {
  return _TaskEntities.fromJson(json);
}

/// @nodoc
mixin _$TaskEntities {
  @JsonKey(name: 'task_name')
  String? get taskName => throw _privateConstructorUsedError;
  @JsonKey(name: 'task_name')
  set taskName(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  set description(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: 'label')
  set label(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_board')
  String? get currentBoard => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_board')
  set currentBoard(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'assignee')
  AssigneeEntities? get assigneeEntities => throw _privateConstructorUsedError;
  @JsonKey(name: 'assignee')
  set assigneeEntities(AssigneeEntities? value) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskEntitiesCopyWith<TaskEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntitiesCopyWith<$Res> {
  factory $TaskEntitiesCopyWith(
          TaskEntities value, $Res Function(TaskEntities) then) =
      _$TaskEntitiesCopyWithImpl<$Res, TaskEntities>;
  @useResult
  $Res call(
      {@JsonKey(name: 'task_name') String? taskName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'current_board') String? currentBoard,
      @JsonKey(name: 'assignee') AssigneeEntities? assigneeEntities});

  $AssigneeEntitiesCopyWith<$Res>? get assigneeEntities;
}

/// @nodoc
class _$TaskEntitiesCopyWithImpl<$Res, $Val extends TaskEntities>
    implements $TaskEntitiesCopyWith<$Res> {
  _$TaskEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = freezed,
    Object? description = freezed,
    Object? label = freezed,
    Object? currentBoard = freezed,
    Object? assigneeEntities = freezed,
  }) {
    return _then(_value.copyWith(
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      currentBoard: freezed == currentBoard
          ? _value.currentBoard
          : currentBoard // ignore: cast_nullable_to_non_nullable
              as String?,
      assigneeEntities: freezed == assigneeEntities
          ? _value.assigneeEntities
          : assigneeEntities // ignore: cast_nullable_to_non_nullable
              as AssigneeEntities?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AssigneeEntitiesCopyWith<$Res>? get assigneeEntities {
    if (_value.assigneeEntities == null) {
      return null;
    }

    return $AssigneeEntitiesCopyWith<$Res>(_value.assigneeEntities!, (value) {
      return _then(_value.copyWith(assigneeEntities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TaskEntitiesCopyWith<$Res>
    implements $TaskEntitiesCopyWith<$Res> {
  factory _$$_TaskEntitiesCopyWith(
          _$_TaskEntities value, $Res Function(_$_TaskEntities) then) =
      __$$_TaskEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'task_name') String? taskName,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'label') String? label,
      @JsonKey(name: 'current_board') String? currentBoard,
      @JsonKey(name: 'assignee') AssigneeEntities? assigneeEntities});

  @override
  $AssigneeEntitiesCopyWith<$Res>? get assigneeEntities;
}

/// @nodoc
class __$$_TaskEntitiesCopyWithImpl<$Res>
    extends _$TaskEntitiesCopyWithImpl<$Res, _$_TaskEntities>
    implements _$$_TaskEntitiesCopyWith<$Res> {
  __$$_TaskEntitiesCopyWithImpl(
      _$_TaskEntities _value, $Res Function(_$_TaskEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskName = freezed,
    Object? description = freezed,
    Object? label = freezed,
    Object? currentBoard = freezed,
    Object? assigneeEntities = freezed,
  }) {
    return _then(_$_TaskEntities(
      taskName: freezed == taskName
          ? _value.taskName
          : taskName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      currentBoard: freezed == currentBoard
          ? _value.currentBoard
          : currentBoard // ignore: cast_nullable_to_non_nullable
              as String?,
      assigneeEntities: freezed == assigneeEntities
          ? _value.assigneeEntities
          : assigneeEntities // ignore: cast_nullable_to_non_nullable
              as AssigneeEntities?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskEntities with DiagnosticableTreeMixin implements _TaskEntities {
  _$_TaskEntities(
      {@JsonKey(name: 'task_name') this.taskName,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'label') this.label,
      @JsonKey(name: 'current_board') this.currentBoard,
      @JsonKey(name: 'assignee') this.assigneeEntities});

  factory _$_TaskEntities.fromJson(Map<String, dynamic> json) =>
      _$$_TaskEntitiesFromJson(json);

  @override
  @JsonKey(name: 'task_name')
  String? taskName;
  @override
  @JsonKey(name: 'description')
  String? description;
  @override
  @JsonKey(name: 'label')
  String? label;
  @override
  @JsonKey(name: 'current_board')
  String? currentBoard;
  @override
  @JsonKey(name: 'assignee')
  AssigneeEntities? assigneeEntities;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TaskEntities(taskName: $taskName, description: $description, label: $label, currentBoard: $currentBoard, assigneeEntities: $assigneeEntities)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TaskEntities'))
      ..add(DiagnosticsProperty('taskName', taskName))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('label', label))
      ..add(DiagnosticsProperty('currentBoard', currentBoard))
      ..add(DiagnosticsProperty('assigneeEntities', assigneeEntities));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskEntitiesCopyWith<_$_TaskEntities> get copyWith =>
      __$$_TaskEntitiesCopyWithImpl<_$_TaskEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskEntitiesToJson(
      this,
    );
  }
}

abstract class _TaskEntities implements TaskEntities {
  factory _TaskEntities(
          {@JsonKey(name: 'task_name') String? taskName,
          @JsonKey(name: 'description') String? description,
          @JsonKey(name: 'label') String? label,
          @JsonKey(name: 'current_board') String? currentBoard,
          @JsonKey(name: 'assignee') AssigneeEntities? assigneeEntities}) =
      _$_TaskEntities;

  factory _TaskEntities.fromJson(Map<String, dynamic> json) =
      _$_TaskEntities.fromJson;

  @override
  @JsonKey(name: 'task_name')
  String? get taskName;
  @JsonKey(name: 'task_name')
  set taskName(String? value);
  @override
  @JsonKey(name: 'description')
  String? get description;
  @JsonKey(name: 'description')
  set description(String? value);
  @override
  @JsonKey(name: 'label')
  String? get label;
  @JsonKey(name: 'label')
  set label(String? value);
  @override
  @JsonKey(name: 'current_board')
  String? get currentBoard;
  @JsonKey(name: 'current_board')
  set currentBoard(String? value);
  @override
  @JsonKey(name: 'assignee')
  AssigneeEntities? get assigneeEntities;
  @JsonKey(name: 'assignee')
  set assigneeEntities(AssigneeEntities? value);
  @override
  @JsonKey(ignore: true)
  _$$_TaskEntitiesCopyWith<_$_TaskEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

AssigneeEntities _$AssigneeEntitiesFromJson(Map<String, dynamic> json) {
  return _AssigneeEntities.fromJson(json);
}

/// @nodoc
mixin _$AssigneeEntities {
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  set name(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  set photoUrl(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AssigneeEntitiesCopyWith<AssigneeEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssigneeEntitiesCopyWith<$Res> {
  factory $AssigneeEntitiesCopyWith(
          AssigneeEntities value, $Res Function(AssigneeEntities) then) =
      _$AssigneeEntitiesCopyWithImpl<$Res, AssigneeEntities>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'photo_url') String? photoUrl});
}

/// @nodoc
class _$AssigneeEntitiesCopyWithImpl<$Res, $Val extends AssigneeEntities>
    implements $AssigneeEntitiesCopyWith<$Res> {
  _$AssigneeEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AssigneeEntitiesCopyWith<$Res>
    implements $AssigneeEntitiesCopyWith<$Res> {
  factory _$$_AssigneeEntitiesCopyWith(
          _$_AssigneeEntities value, $Res Function(_$_AssigneeEntities) then) =
      __$$_AssigneeEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'photo_url') String? photoUrl});
}

/// @nodoc
class __$$_AssigneeEntitiesCopyWithImpl<$Res>
    extends _$AssigneeEntitiesCopyWithImpl<$Res, _$_AssigneeEntities>
    implements _$$_AssigneeEntitiesCopyWith<$Res> {
  __$$_AssigneeEntitiesCopyWithImpl(
      _$_AssigneeEntities _value, $Res Function(_$_AssigneeEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_AssigneeEntities(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AssigneeEntities
    with DiagnosticableTreeMixin
    implements _AssigneeEntities {
  _$_AssigneeEntities(
      {@JsonKey(name: 'name') this.name,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'photo_url') this.photoUrl});

  factory _$_AssigneeEntities.fromJson(Map<String, dynamic> json) =>
      _$$_AssigneeEntitiesFromJson(json);

  @override
  @JsonKey(name: 'name')
  String? name;
  @override
  @JsonKey(name: 'email')
  String? email;
  @override
  @JsonKey(name: 'photo_url')
  String? photoUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AssigneeEntities(name: $name, email: $email, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AssigneeEntities'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('photoUrl', photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AssigneeEntitiesCopyWith<_$_AssigneeEntities> get copyWith =>
      __$$_AssigneeEntitiesCopyWithImpl<_$_AssigneeEntities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AssigneeEntitiesToJson(
      this,
    );
  }
}

abstract class _AssigneeEntities implements AssigneeEntities {
  factory _AssigneeEntities(
      {@JsonKey(name: 'name') String? name,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'photo_url') String? photoUrl}) = _$_AssigneeEntities;

  factory _AssigneeEntities.fromJson(Map<String, dynamic> json) =
      _$_AssigneeEntities.fromJson;

  @override
  @JsonKey(name: 'name')
  String? get name;
  @JsonKey(name: 'name')
  set name(String? value);
  @override
  @JsonKey(name: 'email')
  String? get email;
  @JsonKey(name: 'email')
  set email(String? value);
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @JsonKey(name: 'photo_url')
  set photoUrl(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_AssigneeEntitiesCopyWith<_$_AssigneeEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

CollaboratorEntities _$CollaboratorEntitiesFromJson(Map<String, dynamic> json) {
  return _CollaboratorEntities.fromJson(json);
}

/// @nodoc
mixin _$CollaboratorEntities {
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  set email(String? value) => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  String? get photoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'photo_url')
  set photoUrl(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollaboratorEntitiesCopyWith<CollaboratorEntities> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollaboratorEntitiesCopyWith<$Res> {
  factory $CollaboratorEntitiesCopyWith(CollaboratorEntities value,
          $Res Function(CollaboratorEntities) then) =
      _$CollaboratorEntitiesCopyWithImpl<$Res, CollaboratorEntities>;
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'photo_url') String? photoUrl});
}

/// @nodoc
class _$CollaboratorEntitiesCopyWithImpl<$Res,
        $Val extends CollaboratorEntities>
    implements $CollaboratorEntitiesCopyWith<$Res> {
  _$CollaboratorEntitiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollaboratorEntitiesCopyWith<$Res>
    implements $CollaboratorEntitiesCopyWith<$Res> {
  factory _$$_CollaboratorEntitiesCopyWith(_$_CollaboratorEntities value,
          $Res Function(_$_CollaboratorEntities) then) =
      __$$_CollaboratorEntitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'photo_url') String? photoUrl});
}

/// @nodoc
class __$$_CollaboratorEntitiesCopyWithImpl<$Res>
    extends _$CollaboratorEntitiesCopyWithImpl<$Res, _$_CollaboratorEntities>
    implements _$$_CollaboratorEntitiesCopyWith<$Res> {
  __$$_CollaboratorEntitiesCopyWithImpl(_$_CollaboratorEntities _value,
      $Res Function(_$_CollaboratorEntities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = freezed,
    Object? photoUrl = freezed,
  }) {
    return _then(_$_CollaboratorEntities(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CollaboratorEntities
    with DiagnosticableTreeMixin
    implements _CollaboratorEntities {
  _$_CollaboratorEntities(
      {@JsonKey(name: 'email') this.email,
      @JsonKey(name: 'photo_url') this.photoUrl});

  factory _$_CollaboratorEntities.fromJson(Map<String, dynamic> json) =>
      _$$_CollaboratorEntitiesFromJson(json);

  @override
  @JsonKey(name: 'email')
  String? email;
  @override
  @JsonKey(name: 'photo_url')
  String? photoUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CollaboratorEntities(email: $email, photoUrl: $photoUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CollaboratorEntities'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('photoUrl', photoUrl));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollaboratorEntitiesCopyWith<_$_CollaboratorEntities> get copyWith =>
      __$$_CollaboratorEntitiesCopyWithImpl<_$_CollaboratorEntities>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollaboratorEntitiesToJson(
      this,
    );
  }
}

abstract class _CollaboratorEntities implements CollaboratorEntities {
  factory _CollaboratorEntities(
      {@JsonKey(name: 'email') String? email,
      @JsonKey(name: 'photo_url') String? photoUrl}) = _$_CollaboratorEntities;

  factory _CollaboratorEntities.fromJson(Map<String, dynamic> json) =
      _$_CollaboratorEntities.fromJson;

  @override
  @JsonKey(name: 'email')
  String? get email;
  @JsonKey(name: 'email')
  set email(String? value);
  @override
  @JsonKey(name: 'photo_url')
  String? get photoUrl;
  @JsonKey(name: 'photo_url')
  set photoUrl(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_CollaboratorEntitiesCopyWith<_$_CollaboratorEntities> get copyWith =>
      throw _privateConstructorUsedError;
}
