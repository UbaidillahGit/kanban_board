
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kanban_board/domain/projects/entities/projects.dart';
import 'package:kanban_board/presentation/board/page/board_page.dart';
import 'package:kanban_board/presentation/home/page/home_page.dart';
import 'package:kanban_board/presentation/login/page/login_page.dart';
import 'package:kanban_board/presentation/projects/page/new_projects_page.dart';
import 'package:kanban_board/presentation/splash/splash_page.dart';
import 'package:kanban_board/presentation/task/page/detail_task_page.dart';
import 'package:kanban_board/presentation/task/page/edit_task_page.dart';

part 'router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: LoginPage),
    AutoRoute(page: HomePage),
    AutoRoute(page: NewProjectsPage),
    AutoRoute(page: BoardPage),
    AutoRoute(page: DetailTaskPage),
    AutoRoute(page: EditTaskPage)
  ]
)

class AppRouter extends _$AppRouter {}