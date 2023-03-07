
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class UsersFailure with _$UsersFailure {
  const factory UsersFailure.unexpected() = _Unexpected;
}