
import 'package:freezed_annotation/freezed_annotation.dart';

part 'projects_param.freezed.dart';

@freezed
abstract class ProjecParam with _$ProjecParam{
  factory ProjecParam({
    required String projectName,
    required String projectDescription,
    required String projectOwner,
  }) = _ProjecParam;

  const ProjecParam._();

  factory ProjecParam.empty() => ProjecParam(
        projectName: '',
        projectDescription: '',
        projectOwner: '',
      );
}
