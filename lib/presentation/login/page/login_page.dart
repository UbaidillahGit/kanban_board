import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/login_social/bloc/login_bloc.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';
import 'package:kanban_board/presentation/core/injection/injection.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';
import 'package:kanban_board/presentation/login/widgets/btn_login.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is ResGoogleSignIn) {
            context.router.push(const HomeRoute());
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GlobalWidgets().text(
                    txt: 'Welcome to Kanban Board',
                    color: Colors.indigo[400],
                    size: 25,
                    fontWeight: FontWeight.w400
                  ),
                  Image.asset('assets/media/login_logo.jpg'),
                  const LoginBtn(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}