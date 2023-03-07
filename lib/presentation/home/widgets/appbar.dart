import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/home/bloc/home_bloc.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';

enum EnumAppBarHomeMenuItem { createProject, logout }

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.enumHomeState == EnumHomeState.resSignOut) {
          context.router.pushAndPopUntil(const SplashRoute(), predicate: (route) => true);
        }
      },
      builder: (context, state) {
        return AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                state.userPhotoUrl,
                height: 10,
                width: 10,
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: GlobalWidgets().text(txt: 'Kanban Board', color: Colors.blueGrey),
          actions: [
            PopupMenuButton<EnumAppBarHomeMenuItem>(
              icon: const Icon(
                Icons.drag_indicator_outlined,
                color: GlobalConstants.mainThemeColor,
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<EnumAppBarHomeMenuItem>>[
                PopupMenuItem<EnumAppBarHomeMenuItem>(
                  value: EnumAppBarHomeMenuItem.createProject,
                  onTap: () => context.router.push(const NewProjectsRoute()),
                  child: GlobalWidgets().text(txt: 'Create Project'),
                ),
                PopupMenuItem<EnumAppBarHomeMenuItem>(
                  value: EnumAppBarHomeMenuItem.logout,
                  onTap: () => context.read<HomeBloc>().add(const ReqSignOut()),
                  child: GlobalWidgets().text(txt: 'Logout'),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
