part of 'board_bloc.dart';

@freezed
class BoardEvent with _$BoardEvent {
  const factory BoardEvent.started() = _Started;

  const factory BoardEvent.reqProjectData({required ProjectEntities projectData}) = ReqProjectData;

  const factory BoardEvent.reqAnimateBoardTo(int page) = ReqAnimateBoardTo;

  const factory BoardEvent.reqTaskMove(TaskEntities taskEntities, String boardDestination) = ReqTaskMove;

  const factory BoardEvent.reqExportCsv() = ReqExportCsv;
}