part of 'board_bloc.dart';

enum EnumBoardState {initial, resProjectData, resAnimateBoardTo, resTaskMove}

@freezed
class BoardState extends Equatable with _$BoardState  {
  BoardState._();

  factory BoardState({
    required EnumBoardState enumBoardState,
    required CarouselController carouselController,
    required bool boardHover,
    required ProjectEntities projectEntities,
    required BoardEntities boardToDo,
    required BoardEntities boardInProgress,
  }) = _BoardState;

  factory BoardState.initial() => BoardState(
    enumBoardState: EnumBoardState.initial,
    carouselController: CarouselController(),
    boardHover: false,
    projectEntities: ProjectEntities(),
    boardToDo: BoardEntities(),
    boardInProgress: BoardEntities()
  );
  
  @override
  List<Object?> get props => [
        enumBoardState,
        carouselController,
        boardHover,
        projectEntities,
        boardToDo,
        boardInProgress,
        identityHashCode(this)
      ];
  
}
