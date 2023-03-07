import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/presentation/core/global/label.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.taskEntities, required this.taskIdx});
  final int taskIdx;
  final TaskEntities taskEntities;

  @override
  Widget build(BuildContext context) {
   return InkWell(
    onTap: () => context.router.push(EditTaskRoute(taskEntities: taskEntities, taskIdx: taskIdx)),
    child: Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GlobalWidgets().text(txt: taskEntities.taskName ?? '', fontWeight: FontWeight.w600),
            const SizedBox(height: 10),
            LabelWidgets(labelId: taskEntities.label ?? '')
          ],
        ),
      ),
    ),
   );
  }
}