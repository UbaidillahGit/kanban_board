import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/task/bloc/task_bloc.dart';
import 'package:kanban_board/presentation/core/global/extesion.dart';
import 'package:kanban_board/presentation/core/global/pop_up/popup_info.dart';
import 'package:kanban_board/presentation/core/global/pop_up/popup_option.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class AppBarEditTask extends StatelessWidget implements PreferredSizeWidget {
  const AppBarEditTask({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

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

        if (state.enumTaskState == EnumTaskState.resUpdateTask || state.enumTaskState == EnumTaskState.resDeleteTask) {
          context.router.pop();
        }
      },
      builder: (context, state) {
        return AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: GlobalWidgets().text(txt: state.boardName.boardName()),
          leading: IconButton(
            onPressed: () => context.read<TaskBloc>().add(const ReqUpdateTask()),
            icon: const Icon(
              Icons.close,
              color: GlobalConstants.mainThemeColor,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) => PopUpOption(
                    title: state.taskName.text,
                    content: 'Delete task ?',
                  ),
                ).then(
                  (value) => value == 'yes' ? context.read<TaskBloc>().add(const ReqDeleteTask()) : null,
                );
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.blueGrey,
              ),
            )
          ],
        );
      },
    );
  }
}
