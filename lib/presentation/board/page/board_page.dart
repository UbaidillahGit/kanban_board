
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/board/bloc/board_bloc.dart';
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/presentation/board/widgets/appbar.dart';
import 'package:kanban_board/presentation/board/widgets/board_group.dart';
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
          // create: (context) => getIt<ProjectsBloc>()..add(ReqDetailProject(widget.projectsId)),
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
              // log('ProjectsBloc listner ${state.enumProjectState}');
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
              // log('BlocConsumer builder');
              return CarouselSlider.builder(
                carouselController: boardState.carouselController,
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  if (index == 0) {
                    // return ;
                    return BlocBuilder<ProjectsBloc, ProjectsState>(
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 400,
                            child: BoardGroup(
                              groupName: 'To Do',
                              // boardEntities: state.projectEntities.toDo,
                              boardEntities: state.projectEntities.toDo ?? BoardEntities(),
                            ),
                          ),
                        );
                      },
                    );
                  } else if (index == 1) {
                    // return ;
                    return BlocBuilder<ProjectsBloc, ProjectsState>(
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 400,
                            child: BoardGroup(
                              groupName: 'In Progress',
                              // boardEntities: boardState.boardInProgress,
                              boardEntities: state.projectEntities.inProgress ?? BoardEntities(),
                            ),
                          ),
                        );
                      },
                    );
                  } else if (index == 2) {
                    return BlocBuilder<ProjectsBloc, ProjectsState>(
                      builder: (context, state) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 400,
                            child: BoardGroup(
                              groupName: 'Done',
                              // boardEntities: boardState.boardInProgress,
                              boardEntities: state.projectEntities.done ?? BoardEntities(),
                            ),
                          ),
                        );
                      },
                    );
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


