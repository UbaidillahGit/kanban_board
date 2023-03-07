import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/board/bloc/board_bloc.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/presentation/board/widgets/task_card/create_task_card.dart';
import 'package:kanban_board/presentation/board/widgets/task_card/task_card.dart';
import 'package:kanban_board/presentation/board/widgets/task_card/task_card_feedback.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';

class BoardGroup extends StatelessWidget {
  const BoardGroup({super.key, required this.groupName, required this.boardEntities});
  final String groupName;
  final BoardEntities boardEntities;

  @override
  Widget build(BuildContext context) {

    late String groudId;
    if (groupName == 'To Do') {
      groudId = 'to_do';
    } else if (groupName == 'In Progress') {
      groudId = 'in_progress';
    } else if (groupName == 'Done') {
      groudId = 'done';
    }

    return BlocConsumer<BoardBloc, BoardState>(
      listener: (context, state) { },
      builder: (context, state) {
        return ListView(
          shrinkWrap: true,
          children: [
            Row(
              children: [
                GlobalWidgets().text(txt: groupName, color: Colors.grey[600]),
                const SizedBox(width: 5),
                boardEntities.tasks == null
                    ? GlobalWidgets().text(
                        txt: 'Loading..',
                        color: Colors.grey[500],
                      )
                    : Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: GlobalWidgets().text(
                            txt: boardEntities.tasks!.length.toString(),
                            color: Colors.grey[500],
                          ),
                        ),
                      ),
                const Spacer(),
                const Icon(
                  Icons.drag_handle,
                  color: GlobalConstants.mainThemeColor,
                )
              ],
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 200, maxHeight: double.maxFinite),
              child: DragTarget<TaskEntities>(
                onAccept: (data) {
                  if (data.currentBoard != groudId) {
                    context.read<BoardBloc>().add(ReqTaskMove(data, groudId));
                  }
                },
                onWillAccept: (data) {
                  late int page;
                  if (groupName == 'To Do') {
                    page = 0;
                  } else if (groupName == 'In Progress') {
                    page = 1;
                  } else if (groupName == 'Done') {
                    page = 2;
                  }
                  context.read<BoardBloc>().add(ReqAnimateBoardTo(page));
                  return true;
                },
                builder: (context, candidateData, rejectedData) {
                  return Container(
                    foregroundDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: candidateData.isNotEmpty ? Colors.greenAccent.withOpacity(0.2) : Colors.transparent,
                    ),
                    child: boardEntities.tasks == null
                    ? Center(child: GlobalWidgets().loading())
                    : Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: boardEntities.tasks!.length,
                          itemBuilder: (context, index) {
                            return LongPressDraggable<TaskEntities>(
                              delay: const Duration(milliseconds: 100),
                              feedback: SizedBox(
                                width: 370,
                                child: TaskCardFeedback(taskEntities: boardEntities.tasks![index]),
                              ),
                              data: boardEntities.tasks![index],
                              childWhenDragging: const SizedBox(
                                width: double.maxFinite,
                                height: 87,
                              ),
                              child: TaskCard(
                                taskEntities: boardEntities.tasks![index],
                                taskIdx: index,
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          child: CreateTaskCard(
                            callback: () => context.router.push(DetailTaskRoute(boardName: groudId)),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
