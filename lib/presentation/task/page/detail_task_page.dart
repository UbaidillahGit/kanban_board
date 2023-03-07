import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/task/bloc/task_bloc.dart';
import 'package:kanban_board/presentation/core/injection/injection.dart';
import 'package:kanban_board/presentation/task/widgets/appbar/detail_task.dart';
import 'package:kanban_board/presentation/task/widgets/create_task_btn.dart';
import 'package:kanban_board/presentation/task/widgets/detail_task_description.dart';
import 'package:kanban_board/presentation/task/widgets/detail_task_name.dart';
import 'package:kanban_board/presentation/task/widgets/detail_task_properties.dart';

class DetailTaskPage extends StatelessWidget {
  const DetailTaskPage({super.key, required this.boardName});
  final String boardName;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<TaskBloc>(
      create: (context) => getIt<TaskBloc>()..add(ReqSetBoardName(boardName)),
      child: BlocConsumer<TaskBloc, TaskState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            appBar: const AppBarDetailTask(),
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
            floatingActionButton: const CreateTaskButton(),
          );
        },
      ),
    );
  }
}
