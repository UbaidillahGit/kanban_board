import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/home/bloc/home_bloc.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) { },
      builder: (context, state) {
        return AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              // child: Container(color: Colors.red),
              child: Image.network(
                state.userPhotoUrl,
                height: 10,
                width: 10,
              ),
            ),
          ),
          title: GlobalWidgets().text(txt: 'Kanban Board', color: Colors.blueGrey),
          actions: [
            IconButton(
              onPressed: () => context.router.push(const NewProjectsRoute()),
              icon: const Icon(
                // Icons.drag_indicator_sharp,
                Icons.add,
                color: Colors.blueGrey,
              ),
            )
          ],
        );
      },
    );
  }
}
