
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'projects.freezed.dart';
part 'projects.g.dart';

@freezed
class ProjectList with _$ProjectList{
  factory ProjectList({
    List<ProjectEntities>? listData
  }) = _ProjectList;

  factory ProjectList.fromJson(Map<String, Object?> json) => _$ProjectListFromJson(json);
}

@unfreezed
class ProjectEntities with _$ProjectEntities {
  factory ProjectEntities({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'owner') String? owner,
    @JsonKey(name: 'collaborator') List<CollaboratorEntities>? collaborator,
    @JsonKey(name: 'to_do') BoardEntities? toDo,
    @JsonKey(name: 'in_progress') BoardEntities? inProgress,
     @JsonKey(name: 'done') BoardEntities? done
  }) = _ProjectEntities;

  factory ProjectEntities.fromJson(Map<String, dynamic> json) => _$ProjectEntitiesFromJson(json);
}

@unfreezed
class BoardEntities with _$BoardEntities {
  factory BoardEntities({
    @JsonKey(name: 'group_name') String? groupName,
    @JsonKey(name: 'tasks') List<TaskEntities>? tasks
  }) = _BoardEntities;

  factory BoardEntities.fromJson(Map<String, dynamic> json) => _$BoardEntitiesFromJson(json);
}

@unfreezed
class TaskEntities with _$TaskEntities {
  factory TaskEntities({
    @JsonKey(name: 'task_name') String? taskName,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'label') String? label,
    @JsonKey(name: 'current_board') String? currentBoard,
    @JsonKey(name: 'assignee') AssigneeEntities? assigneeEntities
  }) = _TaskEntities;

  factory TaskEntities.fromJson(Map<String, dynamic> json) => _$TaskEntitiesFromJson(json);
}

@unfreezed
class AssigneeEntities with _$AssigneeEntities {
  factory AssigneeEntities({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'photo_url') String? photoUrl
  }) = _AssigneeEntities;

  factory AssigneeEntities.fromJson(Map<String, dynamic> json) => _$AssigneeEntitiesFromJson(json);
}

@unfreezed
class CollaboratorEntities with _$CollaboratorEntities {
  factory CollaboratorEntities({
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'photo_url') String? photoUrl
  }) = _CollaboratorEntities;

  factory CollaboratorEntities.fromJson(Map<String, dynamic> json) => _$CollaboratorEntitiesFromJson(json);
}