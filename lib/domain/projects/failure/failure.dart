
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class ProjectsFailure with _$ProjectsFailure {
  factory ProjectsFailure.unexpected() = _Unexpected;
  
  factory ProjectsFailure.failToCreateProject() = _FailToCreateProject;
}