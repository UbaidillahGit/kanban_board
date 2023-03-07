
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/home/bloc/home_bloc.dart';
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/injection/injection.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';
import 'package:kanban_board/presentation/home/widgets/appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ProjectsBloc>(
          create: (context) => getIt<ProjectsBloc>()..add(const ReqGetAllProjects()),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => getIt<HomeBloc>()..add(const ReqUserInfo()),
        ),
      ],
      child: Scaffold(
        appBar: const HomeAppBar(),
        body: BlocConsumer<ProjectsBloc, ProjectsState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state.enumProjectState == EnumProjectState.emptyProjects) {
              return Center(
                child: GlobalWidgets().text(
                  txt: 'Empty projets',
                  color: GlobalConstants.mainThemeColor,
                  fontWeight: FontWeight.bold,
                ),
              );
            }

            if (state.enumProjectState == EnumProjectState.loading) {
              return Center(
                child: GlobalWidgets().loading(),
              );
            }

            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () => context.router.push(BoardRoute(projectsId: state.list[index].id ?? '')),
                          child: Row(
                            children: [
                              const Icon(Icons.app_registration, color: GlobalConstants.mainThemeColor),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  GlobalWidgets().text(txt: state.list[index].name ?? '-'),
                                  GlobalWidgets().text(
                                    txt: state.list[index].description ?? '-',
                                    size: 15,
                                    color: GlobalConstants.mainThemeColor,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
                separatorBuilder: (context, index) => const Padding(
                  padding: EdgeInsets.only(left: 38.0),
                  child: Divider(thickness: 0.5),
                ),
                itemCount: state.list.length,
              ),
            );
          },
        ),
      ),
    );
  }
}
