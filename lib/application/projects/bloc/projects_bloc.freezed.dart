// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projects_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProjectsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function() reqCreateProject,
    required TResult Function(String id) reqStreamDetailProject,
    required TResult Function(String id) detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function()? reqCreateProject,
    TResult? Function(String id)? reqStreamDetailProject,
    TResult? Function(String id)? detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? reqCreateProject,
    TResult Function(String id)? reqStreamDetailProject,
    TResult Function(String id)? detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReqGetAllProjects value) getAll,
    required TResult Function(ReqCreateProject value) reqCreateProject,
    required TResult Function(ReqStreamDetailProject value)
        reqStreamDetailProject,
    required TResult Function(ReqDetailProject value) detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReqGetAllProjects value)? getAll,
    TResult? Function(ReqCreateProject value)? reqCreateProject,
    TResult? Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult? Function(ReqDetailProject value)? detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReqGetAllProjects value)? getAll,
    TResult Function(ReqCreateProject value)? reqCreateProject,
    TResult Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult Function(ReqDetailProject value)? detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsEventCopyWith<$Res> {
  factory $ProjectsEventCopyWith(
          ProjectsEvent value, $Res Function(ProjectsEvent) then) =
      _$ProjectsEventCopyWithImpl<$Res, ProjectsEvent>;
}

/// @nodoc
class _$ProjectsEventCopyWithImpl<$Res, $Val extends ProjectsEvent>
    implements $ProjectsEventCopyWith<$Res> {
  _$ProjectsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReqGetAllProjectsCopyWith<$Res> {
  factory _$$ReqGetAllProjectsCopyWith(
          _$ReqGetAllProjects value, $Res Function(_$ReqGetAllProjects) then) =
      __$$ReqGetAllProjectsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReqGetAllProjectsCopyWithImpl<$Res>
    extends _$ProjectsEventCopyWithImpl<$Res, _$ReqGetAllProjects>
    implements _$$ReqGetAllProjectsCopyWith<$Res> {
  __$$ReqGetAllProjectsCopyWithImpl(
      _$ReqGetAllProjects _value, $Res Function(_$ReqGetAllProjects) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReqGetAllProjects implements ReqGetAllProjects {
  const _$ReqGetAllProjects();

  @override
  String toString() {
    return 'ProjectsEvent.getAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReqGetAllProjects);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function() reqCreateProject,
    required TResult Function(String id) reqStreamDetailProject,
    required TResult Function(String id) detail,
  }) {
    return getAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function()? reqCreateProject,
    TResult? Function(String id)? reqStreamDetailProject,
    TResult? Function(String id)? detail,
  }) {
    return getAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? reqCreateProject,
    TResult Function(String id)? reqStreamDetailProject,
    TResult Function(String id)? detail,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReqGetAllProjects value) getAll,
    required TResult Function(ReqCreateProject value) reqCreateProject,
    required TResult Function(ReqStreamDetailProject value)
        reqStreamDetailProject,
    required TResult Function(ReqDetailProject value) detail,
  }) {
    return getAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReqGetAllProjects value)? getAll,
    TResult? Function(ReqCreateProject value)? reqCreateProject,
    TResult? Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult? Function(ReqDetailProject value)? detail,
  }) {
    return getAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReqGetAllProjects value)? getAll,
    TResult Function(ReqCreateProject value)? reqCreateProject,
    TResult Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult Function(ReqDetailProject value)? detail,
    required TResult orElse(),
  }) {
    if (getAll != null) {
      return getAll(this);
    }
    return orElse();
  }
}

abstract class ReqGetAllProjects implements ProjectsEvent {
  const factory ReqGetAllProjects() = _$ReqGetAllProjects;
}

/// @nodoc
abstract class _$$ReqCreateProjectCopyWith<$Res> {
  factory _$$ReqCreateProjectCopyWith(
          _$ReqCreateProject value, $Res Function(_$ReqCreateProject) then) =
      __$$ReqCreateProjectCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReqCreateProjectCopyWithImpl<$Res>
    extends _$ProjectsEventCopyWithImpl<$Res, _$ReqCreateProject>
    implements _$$ReqCreateProjectCopyWith<$Res> {
  __$$ReqCreateProjectCopyWithImpl(
      _$ReqCreateProject _value, $Res Function(_$ReqCreateProject) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReqCreateProject implements ReqCreateProject {
  const _$ReqCreateProject();

  @override
  String toString() {
    return 'ProjectsEvent.reqCreateProject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReqCreateProject);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function() reqCreateProject,
    required TResult Function(String id) reqStreamDetailProject,
    required TResult Function(String id) detail,
  }) {
    return reqCreateProject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function()? reqCreateProject,
    TResult? Function(String id)? reqStreamDetailProject,
    TResult? Function(String id)? detail,
  }) {
    return reqCreateProject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? reqCreateProject,
    TResult Function(String id)? reqStreamDetailProject,
    TResult Function(String id)? detail,
    required TResult orElse(),
  }) {
    if (reqCreateProject != null) {
      return reqCreateProject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReqGetAllProjects value) getAll,
    required TResult Function(ReqCreateProject value) reqCreateProject,
    required TResult Function(ReqStreamDetailProject value)
        reqStreamDetailProject,
    required TResult Function(ReqDetailProject value) detail,
  }) {
    return reqCreateProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReqGetAllProjects value)? getAll,
    TResult? Function(ReqCreateProject value)? reqCreateProject,
    TResult? Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult? Function(ReqDetailProject value)? detail,
  }) {
    return reqCreateProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReqGetAllProjects value)? getAll,
    TResult Function(ReqCreateProject value)? reqCreateProject,
    TResult Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult Function(ReqDetailProject value)? detail,
    required TResult orElse(),
  }) {
    if (reqCreateProject != null) {
      return reqCreateProject(this);
    }
    return orElse();
  }
}

abstract class ReqCreateProject implements ProjectsEvent {
  const factory ReqCreateProject() = _$ReqCreateProject;
}

/// @nodoc
abstract class _$$ReqStreamDetailProjectCopyWith<$Res> {
  factory _$$ReqStreamDetailProjectCopyWith(_$ReqStreamDetailProject value,
          $Res Function(_$ReqStreamDetailProject) then) =
      __$$ReqStreamDetailProjectCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ReqStreamDetailProjectCopyWithImpl<$Res>
    extends _$ProjectsEventCopyWithImpl<$Res, _$ReqStreamDetailProject>
    implements _$$ReqStreamDetailProjectCopyWith<$Res> {
  __$$ReqStreamDetailProjectCopyWithImpl(_$ReqStreamDetailProject _value,
      $Res Function(_$ReqStreamDetailProject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ReqStreamDetailProject(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReqStreamDetailProject implements ReqStreamDetailProject {
  _$ReqStreamDetailProject(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectsEvent.reqStreamDetailProject(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqStreamDetailProject &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqStreamDetailProjectCopyWith<_$ReqStreamDetailProject> get copyWith =>
      __$$ReqStreamDetailProjectCopyWithImpl<_$ReqStreamDetailProject>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function() reqCreateProject,
    required TResult Function(String id) reqStreamDetailProject,
    required TResult Function(String id) detail,
  }) {
    return reqStreamDetailProject(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function()? reqCreateProject,
    TResult? Function(String id)? reqStreamDetailProject,
    TResult? Function(String id)? detail,
  }) {
    return reqStreamDetailProject?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? reqCreateProject,
    TResult Function(String id)? reqStreamDetailProject,
    TResult Function(String id)? detail,
    required TResult orElse(),
  }) {
    if (reqStreamDetailProject != null) {
      return reqStreamDetailProject(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReqGetAllProjects value) getAll,
    required TResult Function(ReqCreateProject value) reqCreateProject,
    required TResult Function(ReqStreamDetailProject value)
        reqStreamDetailProject,
    required TResult Function(ReqDetailProject value) detail,
  }) {
    return reqStreamDetailProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReqGetAllProjects value)? getAll,
    TResult? Function(ReqCreateProject value)? reqCreateProject,
    TResult? Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult? Function(ReqDetailProject value)? detail,
  }) {
    return reqStreamDetailProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReqGetAllProjects value)? getAll,
    TResult Function(ReqCreateProject value)? reqCreateProject,
    TResult Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult Function(ReqDetailProject value)? detail,
    required TResult orElse(),
  }) {
    if (reqStreamDetailProject != null) {
      return reqStreamDetailProject(this);
    }
    return orElse();
  }
}

abstract class ReqStreamDetailProject implements ProjectsEvent {
  factory ReqStreamDetailProject(final String id) = _$ReqStreamDetailProject;

  String get id;
  @JsonKey(ignore: true)
  _$$ReqStreamDetailProjectCopyWith<_$ReqStreamDetailProject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReqDetailProjectCopyWith<$Res> {
  factory _$$ReqDetailProjectCopyWith(
          _$ReqDetailProject value, $Res Function(_$ReqDetailProject) then) =
      __$$ReqDetailProjectCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$ReqDetailProjectCopyWithImpl<$Res>
    extends _$ProjectsEventCopyWithImpl<$Res, _$ReqDetailProject>
    implements _$$ReqDetailProjectCopyWith<$Res> {
  __$$ReqDetailProjectCopyWithImpl(
      _$ReqDetailProject _value, $Res Function(_$ReqDetailProject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ReqDetailProject(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReqDetailProject implements ReqDetailProject {
  _$ReqDetailProject(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ProjectsEvent.detail(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReqDetailProject &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReqDetailProjectCopyWith<_$ReqDetailProject> get copyWith =>
      __$$ReqDetailProjectCopyWithImpl<_$ReqDetailProject>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAll,
    required TResult Function() reqCreateProject,
    required TResult Function(String id) reqStreamDetailProject,
    required TResult Function(String id) detail,
  }) {
    return detail(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAll,
    TResult? Function()? reqCreateProject,
    TResult? Function(String id)? reqStreamDetailProject,
    TResult? Function(String id)? detail,
  }) {
    return detail?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAll,
    TResult Function()? reqCreateProject,
    TResult Function(String id)? reqStreamDetailProject,
    TResult Function(String id)? detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReqGetAllProjects value) getAll,
    required TResult Function(ReqCreateProject value) reqCreateProject,
    required TResult Function(ReqStreamDetailProject value)
        reqStreamDetailProject,
    required TResult Function(ReqDetailProject value) detail,
  }) {
    return detail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReqGetAllProjects value)? getAll,
    TResult? Function(ReqCreateProject value)? reqCreateProject,
    TResult? Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult? Function(ReqDetailProject value)? detail,
  }) {
    return detail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReqGetAllProjects value)? getAll,
    TResult Function(ReqCreateProject value)? reqCreateProject,
    TResult Function(ReqStreamDetailProject value)? reqStreamDetailProject,
    TResult Function(ReqDetailProject value)? detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(this);
    }
    return orElse();
  }
}

abstract class ReqDetailProject implements ProjectsEvent {
  factory ReqDetailProject(final String id) = _$ReqDetailProject;

  String get id;
  @JsonKey(ignore: true)
  _$$ReqDetailProjectCopyWith<_$ReqDetailProject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectsState {
  TextEditingController get projectsNameController =>
      throw _privateConstructorUsedError;
  TextEditingController get projectsDescriptionController =>
      throw _privateConstructorUsedError;
  List<ProjectEntities> get list => throw _privateConstructorUsedError;
  ProjectEntities get projectEntities => throw _privateConstructorUsedError;
  EnumProjectState get enumProjectState => throw _privateConstructorUsedError;
  String get projectsId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectsStateCopyWith<ProjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsStateCopyWith<$Res> {
  factory $ProjectsStateCopyWith(
          ProjectsState value, $Res Function(ProjectsState) then) =
      _$ProjectsStateCopyWithImpl<$Res, ProjectsState>;
  @useResult
  $Res call(
      {TextEditingController projectsNameController,
      TextEditingController projectsDescriptionController,
      List<ProjectEntities> list,
      ProjectEntities projectEntities,
      EnumProjectState enumProjectState,
      String projectsId});

  $ProjectEntitiesCopyWith<$Res> get projectEntities;
}

/// @nodoc
class _$ProjectsStateCopyWithImpl<$Res, $Val extends ProjectsState>
    implements $ProjectsStateCopyWith<$Res> {
  _$ProjectsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectsNameController = null,
    Object? projectsDescriptionController = null,
    Object? list = null,
    Object? projectEntities = null,
    Object? enumProjectState = null,
    Object? projectsId = null,
  }) {
    return _then(_value.copyWith(
      projectsNameController: null == projectsNameController
          ? _value.projectsNameController
          : projectsNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      projectsDescriptionController: null == projectsDescriptionController
          ? _value.projectsDescriptionController
          : projectsDescriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntities>,
      projectEntities: null == projectEntities
          ? _value.projectEntities
          : projectEntities // ignore: cast_nullable_to_non_nullable
              as ProjectEntities,
      enumProjectState: null == enumProjectState
          ? _value.enumProjectState
          : enumProjectState // ignore: cast_nullable_to_non_nullable
              as EnumProjectState,
      projectsId: null == projectsId
          ? _value.projectsId
          : projectsId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectEntitiesCopyWith<$Res> get projectEntities {
    return $ProjectEntitiesCopyWith<$Res>(_value.projectEntities, (value) {
      return _then(_value.copyWith(projectEntities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProjectsStateCopyWith<$Res>
    implements $ProjectsStateCopyWith<$Res> {
  factory _$$_ProjectsStateCopyWith(
          _$_ProjectsState value, $Res Function(_$_ProjectsState) then) =
      __$$_ProjectsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TextEditingController projectsNameController,
      TextEditingController projectsDescriptionController,
      List<ProjectEntities> list,
      ProjectEntities projectEntities,
      EnumProjectState enumProjectState,
      String projectsId});

  @override
  $ProjectEntitiesCopyWith<$Res> get projectEntities;
}

/// @nodoc
class __$$_ProjectsStateCopyWithImpl<$Res>
    extends _$ProjectsStateCopyWithImpl<$Res, _$_ProjectsState>
    implements _$$_ProjectsStateCopyWith<$Res> {
  __$$_ProjectsStateCopyWithImpl(
      _$_ProjectsState _value, $Res Function(_$_ProjectsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectsNameController = null,
    Object? projectsDescriptionController = null,
    Object? list = null,
    Object? projectEntities = null,
    Object? enumProjectState = null,
    Object? projectsId = null,
  }) {
    return _then(_$_ProjectsState(
      projectsNameController: null == projectsNameController
          ? _value.projectsNameController
          : projectsNameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      projectsDescriptionController: null == projectsDescriptionController
          ? _value.projectsDescriptionController
          : projectsDescriptionController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntities>,
      projectEntities: null == projectEntities
          ? _value.projectEntities
          : projectEntities // ignore: cast_nullable_to_non_nullable
              as ProjectEntities,
      enumProjectState: null == enumProjectState
          ? _value.enumProjectState
          : enumProjectState // ignore: cast_nullable_to_non_nullable
              as EnumProjectState,
      projectsId: null == projectsId
          ? _value.projectsId
          : projectsId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ProjectsState extends _ProjectsState {
  _$_ProjectsState(
      {required this.projectsNameController,
      required this.projectsDescriptionController,
      required final List<ProjectEntities> list,
      required this.projectEntities,
      required this.enumProjectState,
      required this.projectsId})
      : _list = list,
        super._();

  @override
  final TextEditingController projectsNameController;
  @override
  final TextEditingController projectsDescriptionController;
  final List<ProjectEntities> _list;
  @override
  List<ProjectEntities> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  final ProjectEntities projectEntities;
  @override
  final EnumProjectState enumProjectState;
  @override
  final String projectsId;

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProjectsStateCopyWith<_$_ProjectsState> get copyWith =>
      __$$_ProjectsStateCopyWithImpl<_$_ProjectsState>(this, _$identity);
}

abstract class _ProjectsState extends ProjectsState {
  factory _ProjectsState(
      {required final TextEditingController projectsNameController,
      required final TextEditingController projectsDescriptionController,
      required final List<ProjectEntities> list,
      required final ProjectEntities projectEntities,
      required final EnumProjectState enumProjectState,
      required final String projectsId}) = _$_ProjectsState;
  _ProjectsState._() : super._();

  @override
  TextEditingController get projectsNameController;
  @override
  TextEditingController get projectsDescriptionController;
  @override
  List<ProjectEntities> get list;
  @override
  ProjectEntities get projectEntities;
  @override
  EnumProjectState get enumProjectState;
  @override
  String get projectsId;
  @override
  @JsonKey(ignore: true)
  _$$_ProjectsStateCopyWith<_$_ProjectsState> get copyWith =>
      throw _privateConstructorUsedError;
}
