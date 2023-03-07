
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class ProjectsFailure with _$ProjectsFailure {
  const factory ProjectsFailure.unexpected() = _Unexpected;
  const factory ProjectsFailure.failToCreateProject() = FailToCreateProject;
  factory ProjectsFailure.emptyProjecest() = EmptyProjects; 
}