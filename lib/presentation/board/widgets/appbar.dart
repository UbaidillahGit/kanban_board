import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/board/bloc/board_bloc.dart';
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';

enum EnumAppBarMenuItem { itemOne, itemTwo, itemThree }

class BoardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BoardAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectsBloc, ProjectsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () => context.router.pushAndPopUntil(
              const HomeRoute(),
              predicate: (route) => true,
            ),
            icon: const Icon(
              Icons.arrow_back_ios_new_outlined,
              color: GlobalConstants.mainThemeColor,
            ),
          ),
          title: GlobalWidgets().text(
            txt: '${state.projectEntities.name}',
            color: Colors.blueGrey,
          ),
          actions: [
            PopupMenuButton<EnumAppBarMenuItem>(
              icon: const Icon(
                Icons.drag_indicator_outlined,
                color: GlobalConstants.mainThemeColor,
              ),
              itemBuilder: (BuildContext context) => <PopupMenuEntry<EnumAppBarMenuItem>>[
                PopupMenuItem<EnumAppBarMenuItem>(
                  value: EnumAppBarMenuItem.itemOne,
                  onTap: () => context.read<BoardBloc>().add(const ReqExportCsv()),
                  child: GlobalWidgets().text(txt: 'Export to CSV'),
                ),
                PopupMenuItem<EnumAppBarMenuItem>(
                  value: EnumAppBarMenuItem.itemTwo,
                  child: GlobalWidgets().text(txt: 'History Board'),
                ),
                PopupMenuItem<EnumAppBarMenuItem>(
                  value: EnumAppBarMenuItem.itemThree,
                  child: GlobalWidgets().text(txt: 'Delete Board'),
                ),
              ],
            )
          ],
        );
      },
    );
  }
}
