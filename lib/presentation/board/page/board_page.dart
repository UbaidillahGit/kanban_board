
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/board/bloc/board_bloc.dart';
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart';
import 'package:kanban_board/presentation/board/widgets/appbar.dart';
import 'package:kanban_board/presentation/board/widgets/board/done.dart';
import 'package:kanban_board/presentation/board/widgets/board/in_progress.dart';
import 'package:kanban_board/presentation/board/widgets/board/to_do.dart';
import 'package:kanban_board/presentation/core/injection/injection.dart';

class BoardPage extends StatefulWidget {
  const BoardPage({super.key, required this.projectsId});
  final String projectsId;

  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ProjectsBloc>()..add(ReqStreamDetailProject(widget.projectsId)),
        ),
        BlocProvider(
          create: (context) => getIt<BoardBloc>(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ProjectsBloc, ProjectsState>(
            listener: (context, state) {
              if (state.enumProjectState == EnumProjectState.resDetailProject) {
                context.read<BoardBloc>().add(ReqProjectData(projectData: state.projectEntities));
              }
            },
          ),
        ],
        child: Scaffold(
          appBar: const BoardAppBar(),
          body: BlocConsumer<BoardBloc, BoardState>(
            listener: (context, state) {},
            builder: (context, boardState) {
              return CarouselSlider.builder(
                carouselController: boardState.carouselController,
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  if (index == 0) {

                    return const ToDoBoard();

                  } else if (index == 1) {

                    return const InProgressBoard();

                  } else if (index == 2) {

                    return const DoneBoard();
                  }

                  return Container();
                },
                options: CarouselOptions(
                  enableInfiniteScroll: false,
                  height: double.maxFinite,
                  animateToClosest: true,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}


