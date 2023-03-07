
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart';
import 'package:kanban_board/presentation/core/global_const_value.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/injection/injection.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';
import 'package:kanban_board/presentation/projects/widgets/new_projects_appbar.dart';

class NewProjectsPage extends StatelessWidget {
  const NewProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectsBloc>(
      create: (context) => getIt<ProjectsBloc>(),
      child: BlocConsumer<ProjectsBloc, ProjectsState>(
        listener: (context, state) {
          if (state.enumProjectState == EnumProjectState.success) {
            context.router.push(BoardRoute(projectsId: state.projectsId));
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: const NewProjectsAppBar(),
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    // GlobalWidgets().text(txt: 'Create Projects'),
                    TextFormField(
                      controller: state.projectsNameController,
                      decoration: const InputDecoration(
                        hintText: 'Project Name',
                        focusColor: GlobalConstants.mainThemeColor,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: GlobalConstants.mainThemeColor),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: state.projectsDescriptionController,
                      decoration: const InputDecoration(
                        hintText: 'Project Decription',
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: GlobalConstants.mainThemeColor),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: ElevatedButton(
                onPressed: () => context.read<ProjectsBloc>().add(const ReqCreateProject()),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  fixedSize: const Size(double.maxFinite, 20),
                  backgroundColor: GlobalConstants.mainThemeColor,
                ),
                child: GlobalWidgets().text(txt: 'Create', color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}