import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/task/bloc/task_bloc.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class AppBarDetailTask extends StatelessWidget implements PreferredSizeWidget {
  const AppBarDetailTask({
    super.key,
  });
  // final  CarouselController buttonCarouselController;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskBloc, TaskState>(
      builder: (context, state) {
        return AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: GlobalWidgets().text(txt: state.enumTaskState.toString()),
          leading: IconButton(
            onPressed: () => context.router.pop(),
            icon: const Icon(
              Icons.close,
              color: GlobalConstants.mainThemeColor,
            ),
          ),
          actions: [
            IconButton(
              // onPressed: () => context.router.push(const NewProjectsRoute()),
              onPressed: () {},
              icon: const Icon(
                Icons.drag_indicator_sharp,
                // Icons.add,
                color: Colors.blueGrey,
              ),
            )
          ],
        );
      },
    );
  }
}
