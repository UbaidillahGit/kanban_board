
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class BoardFailure {
  factory BoardFailure.unexpected() = _Unexpected;
  factory BoardFailure.failToUpdate() = _FailToUpdateBoard;
}