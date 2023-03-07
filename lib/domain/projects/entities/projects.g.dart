// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projects.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProjectList _$$_ProjectListFromJson(Map<String, dynamic> json) =>
    _$_ProjectList(
      listData: (json['listData'] as List<dynamic>?)
          ?.map((e) => ProjectEntities.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProjectListToJson(_$_ProjectList instance) =>
    <String, dynamic>{
      'listData': instance.listData,
    };

_$_ProjectEntities _$$_ProjectEntitiesFromJson(Map<String, dynamic> json) =>
    _$_ProjectEntities(
      id: json['id'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      owner: json['owner'] as String?,
      collaborator: (json['collaborator'] as List<dynamic>?)
          ?.map((e) => CollaboratorEntities.fromJson(e as Map<String, dynamic>))
          .toList(),
      toDo: json['to_do'] == null
          ? null
          : BoardEntities.fromJson(json['to_do'] as Map<String, dynamic>),
      inProgress: json['in_progress'] == null
          ? null
          : BoardEntities.fromJson(json['in_progress'] as Map<String, dynamic>),
      done: json['done'] == null
          ? null
          : BoardEntities.fromJson(json['done'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ProjectEntitiesToJson(_$_ProjectEntities instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'owner': instance.owner,
      'collaborator': instance.collaborator,
      'to_do': instance.toDo,
      'in_progress': instance.inProgress,
      'done': instance.done,
    };

_$_BoardEntities _$$_BoardEntitiesFromJson(Map<String, dynamic> json) =>
    _$_BoardEntities(
      groupName: json['group_name'] as String?,
      tasks: (json['tasks'] as List<dynamic>?)
          ?.map((e) => TaskEntities.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BoardEntitiesToJson(_$_BoardEntities instance) =>
    <String, dynamic>{
      'group_name': instance.groupName,
      'tasks': instance.tasks,
    };

_$_TaskEntities _$$_TaskEntitiesFromJson(Map<String, dynamic> json) =>
    _$_TaskEntities(
      taskName: json['task_name'] as String?,
      description: json['description'] as String?,
      label: json['label'] as String?,
      currentBoard: json['current_board'] as String?,
      assigneeEntities: json['assignee'] == null
          ? null
          : AssigneeEntities.fromJson(json['assignee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TaskEntitiesToJson(_$_TaskEntities instance) =>
    <String, dynamic>{
      'task_name': instance.taskName,
      'description': instance.description,
      'label': instance.label,
      'current_board': instance.currentBoard,
      'assignee': instance.assigneeEntities,
    };

_$_AssigneeEntities _$$_AssigneeEntitiesFromJson(Map<String, dynamic> json) =>
    _$_AssigneeEntities(
      name: json['name'] as String?,
      email: json['email'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$$_AssigneeEntitiesToJson(_$_AssigneeEntities instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'photo_url': instance.photoUrl,
    };

_$_CollaboratorEntities _$$_CollaboratorEntitiesFromJson(
        Map<String, dynamic> json) =>
    _$_CollaboratorEntities(
      email: json['email'] as String?,
      photoUrl: json['photo_url'] as String?,
    );

Map<String, dynamic> _$$_CollaboratorEntitiesToJson(
        _$_CollaboratorEntities instance) =>
    <String, dynamic>{
      'email': instance.email,
      'photo_url': instance.photoUrl,
    };
