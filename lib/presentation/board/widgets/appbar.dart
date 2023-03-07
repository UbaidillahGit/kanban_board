import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart';
import 'package:kanban_board/presentation/core/global/pop_up/popup_option.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';

enum EnumAppBarMenuItem { itemOne, itemTwo, itemThree }

class BoardAppBar extends StatelessWidget implements PreferredSizeWidget {
  const BoardAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProjectsBloc, ProjectsState>(
      listener: (context, state) 
        => state.enumProjectState == EnumProjectState.resDeleteProject 
        ? context.router.pushAndPopUntil(const HomeRoute(), predicate: (route) => false) 
        : null,
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
            IconButton(
              onPressed: () async {
                await showDialog(
                  context: context,
                  builder: (context) => PopUpOption(
                    title: state.projectEntities.name ?? '',
                    content: 'Delete Project ?',
                  ),
                ).then(
                  (value) => value == 'yes' ? context.read<ProjectsBloc>().add(const ReqDeleteProject()) : null,
                );
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.blueGrey,
              ),
            ),
            // PopupMenuButton<EnumAppBarMenuItem>(
            //   icon: const Icon(
            //     Icons.drag_indicator_outlined,
            //     color: GlobalConstants.mainThemeColor,
            //   ),
            //   itemBuilder: (BuildContext context) => <PopupMenuEntry<EnumAppBarMenuItem>>[
            //     PopupMenuItem<EnumAppBarMenuItem>(
            //       value: EnumAppBarMenuItem.itemOne,
            //       onTap: () => context.read<BoardBloc>().add(const ReqExportCsv()),
            //       child: GlobalWidgets().text(txt: 'Export to CSV'),
            //     ),
            //     PopupMenuItem<EnumAppBarMenuItem>(
            //       value: EnumAppBarMenuItem.itemTwo,
            //       onTap: () async {
            //         log('onTap');
            //         await showDialog(
            //           context: context,
            //           builder: (context) => const PopUpOption(
            //             title: 'state.projectEntities.name',
            //             content: 'Delete Project ?',
            //           ),
            //         ).then(
            //           (value) {},
            //         );
            //       },
            //       child: GlobalWidgets().text(txt: 'Delete Project'),
            //     ),
            //   ],
            // )
          ],
        );
      },
    );
  }
}
