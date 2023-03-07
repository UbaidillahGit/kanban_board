import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/task/bloc/task_bloc.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/presentation/core/injection/injection.dart';
import 'package:kanban_board/presentation/task/widgets/appbar/edit_task.dart';
import 'package:kanban_board/presentation/task/widgets/detail_task_description.dart';
import 'package:kanban_board/presentation/task/widgets/detail_task_name.dart';
import 'package:kanban_board/presentation/task/widgets/detail_task_properties.dart';

class EditTaskPage extends StatelessWidget {
  const EditTaskPage({super.key, required this.taskEntities, required this.taskIdx});
  final TaskEntities taskEntities;
  final int taskIdx;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskBloc>(
      create: (context) => getIt<TaskBloc>()..add(ReqEditTask(taskIdx, taskEntities)),
      child: BlocConsumer<TaskBloc, TaskState>(
        listener: (context, state) { },
        builder: (context, state) {
          return Scaffold(
            appBar: const AppBarEditTask(),
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: const [
                  DetailTaskName(),
                  DetailTaskDescription(),
                  TaskProperties(),
                ],
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          );
        },
      ),
    );
  }
}
