import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/task/bloc/task_bloc.dart';
import 'package:kanban_board/presentation/core/global/pop_up/popup_info.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class CreateTaskButton extends StatelessWidget {
  const CreateTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TaskBloc, TaskState>(
      listener: (context, state) {
        if (state.enumTaskState == EnumTaskState.err) {
          showDialog(
            context: context,
            builder: (context) => PopUpInfo(content: state.errMsg ?? ''),
          );
        }

        if (state.enumTaskState == EnumTaskState.resCreateTask) {
        // log('CreateTaskButton ${state.enumTaskState}');
          // showDialog(
          //   context: context,
          //   builder: (context) => InfoDialog(content: 'Task Created'),
          // );
          // Future.delayed(const Duration(seconds: 1), () => context.router.pop());
          context.router.pop();
        }
      },
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: ElevatedButton(
            onPressed: () => context.read<TaskBloc>().add(const ReqCreateTask()),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              fixedSize: const Size(double.maxFinite, 20),
              backgroundColor: GlobalConstants.mainThemeColor,
            ),
            child: GlobalWidgets().text(txt: 'Create', color: Colors.white),
          ),
        );
      },
    );
  }
}