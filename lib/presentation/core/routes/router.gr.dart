// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LoginPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    NewProjectsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const NewProjectsPage(),
      );
    },
    BoardRoute.name: (routeData) {
      final args = routeData.argsAs<BoardRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: BoardPage(
          key: args.key,
          projectsId: args.projectsId,
        ),
      );
    },
    DetailTaskRoute.name: (routeData) {
      final args = routeData.argsAs<DetailTaskRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: DetailTaskPage(
          key: args.key,
          boardName: args.boardName,
        ),
      );
    },
    EditTaskRoute.name: (routeData) {
      final args = routeData.argsAs<EditTaskRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: EditTaskPage(
          key: args.key,
          taskEntities: args.taskEntities,
          taskIdx: args.taskIdx,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          LoginRoute.name,
          path: '/login-page',
        ),
        RouteConfig(
          HomeRoute.name,
          path: '/home-page',
        ),
        RouteConfig(
          NewProjectsRoute.name,
          path: '/new-projects-page',
        ),
        RouteConfig(
          BoardRoute.name,
          path: '/board-page',
        ),
        RouteConfig(
          DetailTaskRoute.name,
          path: '/detail-task-page',
        ),
        RouteConfig(
          EditTaskRoute.name,
          path: '/edit-task-page',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute()
      : super(
          LoginRoute.name,
          path: '/login-page',
        );

  static const String name = 'LoginRoute';
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-page',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [NewProjectsPage]
class NewProjectsRoute extends PageRouteInfo<void> {
  const NewProjectsRoute()
      : super(
          NewProjectsRoute.name,
          path: '/new-projects-page',
        );

  static const String name = 'NewProjectsRoute';
}

/// generated route for
/// [BoardPage]
class BoardRoute extends PageRouteInfo<BoardRouteArgs> {
  BoardRoute({
    Key? key,
    required String projectsId,
  }) : super(
          BoardRoute.name,
          path: '/board-page',
          args: BoardRouteArgs(
            key: key,
            projectsId: projectsId,
          ),
        );

  static const String name = 'BoardRoute';
}

class BoardRouteArgs {
  const BoardRouteArgs({
    this.key,
    required this.projectsId,
  });

  final Key? key;

  final String projectsId;

  @override
  String toString() {
    return 'BoardRouteArgs{key: $key, projectsId: $projectsId}';
  }
}

/// generated route for
/// [DetailTaskPage]
class DetailTaskRoute extends PageRouteInfo<DetailTaskRouteArgs> {
  DetailTaskRoute({
    Key? key,
    required String boardName,
  }) : super(
          DetailTaskRoute.name,
          path: '/detail-task-page',
          args: DetailTaskRouteArgs(
            key: key,
            boardName: boardName,
          ),
        );

  static const String name = 'DetailTaskRoute';
}

class DetailTaskRouteArgs {
  const DetailTaskRouteArgs({
    this.key,
    required this.boardName,
  });

  final Key? key;

  final String boardName;

  @override
  String toString() {
    return 'DetailTaskRouteArgs{key: $key, boardName: $boardName}';
  }
}

/// generated route for
/// [EditTaskPage]
class EditTaskRoute extends PageRouteInfo<EditTaskRouteArgs> {
  EditTaskRoute({
    Key? key,
    required TaskEntities taskEntities,
    required int taskIdx,
  }) : super(
          EditTaskRoute.name,
          path: '/edit-task-page',
          args: EditTaskRouteArgs(
            key: key,
            taskEntities: taskEntities,
            taskIdx: taskIdx,
          ),
        );

  static const String name = 'EditTaskRoute';
}

class EditTaskRouteArgs {
  const EditTaskRouteArgs({
    this.key,
    required this.taskEntities,
    required this.taskIdx,
  });

  final Key? key;

  final TaskEntities taskEntities;

  final int taskIdx;

  @override
  String toString() {
    return 'EditTaskRouteArgs{key: $key, taskEntities: $taskEntities, taskIdx: $taskIdx}';
  }
}
