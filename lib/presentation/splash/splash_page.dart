
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/splash/bloc/splash_bloc.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/injection/injection.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SplashBloc>(
      create: (context) => getIt<SplashBloc>()..add(const ReqSession()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) => context.router.push(state is ResToLogin ? const LoginRoute() : const HomeRoute()),
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GlobalWidgets().loading(),
                const SizedBox(height: 20),
                GlobalWidgets().text(
                  txt: 'Loading...',
                  color: Colors.indigo[400],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
