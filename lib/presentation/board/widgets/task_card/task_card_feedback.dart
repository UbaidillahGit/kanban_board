import 'package:flutter/material.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/presentation/core/global/label.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class TaskCardFeedback extends StatelessWidget {
  const TaskCardFeedback({super.key, required this.taskEntities});
  final TaskEntities taskEntities;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      color: Colors.white70.withOpacity(0.9),
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
    );
  }
}