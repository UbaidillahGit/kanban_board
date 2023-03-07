import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/presentation/core/global/label.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({super.key, required this.taskEntities, required this.taskIdx});
  final int taskIdx;
  final TaskEntities taskEntities;

  @override
  Widget build(BuildContext context) {
      Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: ElevatedButton(
        onPressed: (){
          log('onPressed');
        },
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(8.0),
          minimumSize: const Size(double.maxFinite, 50),
          elevation: 0,
          backgroundColor: Colors.white70,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: const BorderSide(
              color: GlobalConstants.mainThemeColor,
              width: 0.3,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GlobalWidgets().text(txt: taskEntities.taskName ?? ''),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.green[100],
                ),
                child: GlobalWidgets().text(
                  txt: '${taskEntities.label}',
                  color: Colors.green[600],
                  size: 15,
                ),
              )
            ],
          ),
        ),
      ),
    );

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