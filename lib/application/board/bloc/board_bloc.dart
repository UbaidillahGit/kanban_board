import 'dart:developer';
import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:csv/csv.dart';
import 'package:equatable/equatable.dart';
import 'package:external_path/external_path.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/infrastructure/remote/board_repo.dart';
import 'package:permission_handler/permission_handler.dart';

part 'board_bloc.freezed.dart';
part 'board_event.dart';
part 'board_state.dart';

/// [Naming Convention]

/// [req] keyword stands for [Request]
/// [res] keyword stands for [Response]

/// [Enum] to identify which [Response] type to be return

@injectable
class BoardBloc extends Bloc<BoardEvent, BoardState> {
  BoardBloc(this._boardRepository) : super(BoardState.initial()) {
    on<BoardEvent>((event, emit) {});

    on<ReqProjectData>(_onReqProjectData);

    on<ReqAnimateBoardTo>(_onReqAnimateBoardTo);

    on<ReqTaskMove>(_onReqTaskMove);

    on<ReqExportCsv>(_onReqTExportCsv);
  }

  final BoardRepository _boardRepository;

  void _onReqProjectData(ReqProjectData event, Emitter<BoardState> emit) async {
    emit(
      state.copyWith(
        enumBoardState: EnumBoardState.resProjectData,
        boardToDo: event.projectData.toDo!,
        boardInProgress: event.projectData.inProgress!,
      ),
    );
  }

  void _onReqAnimateBoardTo(ReqAnimateBoardTo event, Emitter<BoardState> emit) {
    state.carouselController.animateToPage(event.page);
    emit(
      state.copyWith(
        boardHover: true,
        boardToDo: state.boardToDo,
        boardInProgress: state.boardInProgress,
        carouselController: state.carouselController,
      ),
    );
  }

  void _onReqTaskMove(ReqTaskMove event, Emitter<BoardState> emit) async {
    _boardRepository.taskMove(
      event.taskEntities.currentBoard ?? '',
      event.boardDestination,
      event.taskEntities,
      TaskEntities(
        taskName: event.taskEntities.taskName,
        assigneeEntities: event.taskEntities.assigneeEntities,
        label: event.taskEntities.label,
        currentBoard: event.boardDestination,
      ),
    );

    emit(
      state.copyWith(
        enumBoardState: EnumBoardState.resTaskMove,
        boardToDo: state.boardToDo,
        boardInProgress: state.boardInProgress,
      ),
    );
  }

  void _onReqTExportCsv(ReqExportCsv event, Emitter<BoardState> emit) async {
    Map<Permission, PermissionStatus> statuses = await [Permission.storage].request();
    log('_onReqTExportCsv $statuses');
    List<dynamic> associateList = [
      {"number": 1, "lat": "14.97534313396318", "lon": "101.22998536005622"},
      {"number": 2, "lat": "14.97534313396318", "lon": "101.22998536005622"},
      {"number": 3, "lat": "14.97534313396318", "lon": "101.22998536005622"},
      {"number": 4, "lat": "14.97534313396318", "lon": "101.22998536005622"}
    ];

    List<List<dynamic>> rows = [];

    List<dynamic> row = [];
    row.add("");
    row.add("latitude");
    row.add("longitude");
    rows.add(row);
    for (int i = 0; i < associateList.length; i++) {
      List<dynamic> row = [];
      row.add(associateList[i]["number"] - 1);
      row.add(associateList[i]["lat"]);
      row.add(associateList[i]["lon"]);
      rows.add(row);
    }

    String csv = const ListToCsvConverter().convert(rows);

    String dir = await ExternalPath.getExternalStoragePublicDirectory(ExternalPath.DIRECTORY_DOWNLOADS);
    // print("dir $dir");
    String file = dir;

    File f = File("$file/filename.csv");

    f.writeAsString(csv);
  }
}
