import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/presentation/board/widgets/board/board_group.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';

class InProgressBoard extends StatelessWidget {
  const InProgressBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProjectsBloc, ProjectsState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: GlobalConstants.cardSize.width,
            height: GlobalConstants.cardSize.width,
            child: BoardGroup(
              groupName: 'In Progress',
              boardEntities: state.projectEntities.inProgress ?? BoardEntities(),
            ),
          ),
        );
      },
    );
  }
}
