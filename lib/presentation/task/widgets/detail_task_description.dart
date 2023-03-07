
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/task/bloc/task_bloc.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';

class DetailTaskDescription extends StatelessWidget {
  const DetailTaskDescription({super.key});

  // DetailTaskDescription(String tasDescription, {super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        return TextFormField(
          onChanged: (value) => context.read<TaskBloc>().add(ReqOnChangedTaskDescription(value)),
          maxLines: 5,
          style: const TextStyle(
            overflow: TextOverflow.visible,
            fontSize: 20,
            color: GlobalConstants.mainThemeColor,
            fontWeight: FontWeight.w400,
          ),
          controller: state.taskDescription,
          decoration: const InputDecoration(
            hintText: 'Description..',
            border: InputBorder.none,
            focusColor: GlobalConstants.mainThemeColor,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
          ),
        );
      },
    );
  }
}
