import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class NewProjectsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NewProjectsAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: () => context.router.pop(),
        icon: const Icon(
          Icons.close,
          color: Colors.blueGrey,
        ),
      ),
      title: GlobalWidgets().text(
        txt: 'New Projects',
        color: Colors.blueGrey,
      ),
    );
  }
}
