
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/task/bloc/task_bloc.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';

class DetailTaskName extends StatelessWidget {
  const DetailTaskName({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskBloc, TaskState>(
      listener: (context, state) {},
      builder: (context, state) {
        return TextFormField(
          enableInteractiveSelection: true,
          textDirection: TextDirection.ltr,
          onChanged: (value) => context.read<TaskBloc>()..add(ReqOnChangedTaskName(value)),
          style: const TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          controller: state.taskName,
          decoration: const InputDecoration(
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
