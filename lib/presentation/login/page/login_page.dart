import 'dart:developer';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/login_social/bloc/login_bloc.dart';
import 'package:kanban_board/presentation/core/injection/injection.dart';
import 'package:kanban_board/presentation/core/routes/router.dart';
import 'package:kanban_board/presentation/login/widgets/btn_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    // BlocProvider(
    //   create: (context) => LoginBloc(),
    //   child: widget,
    // );
    // BlocProvider.of<LoginBloc>(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // return BlocProvider<LoginBloc>.value(
    //   value: LoginBloc(FirebaseAuth.instance),
    //   child: ,
    // );
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      // create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
        listener: (context, state) {
           log('LoginPage state $state');
          if (state is ResGoogleSignIn) {
            context.router.push(const HomeRoute());
          }
        },
        builder: (context, state) {
          return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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

class LoginPage1 extends StatelessWidget {
  const LoginPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      // create: (context) => LoginBloc(FirebaseAuth.instance),
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          log('LoginPage state $state');
          
        },
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/media/login_logo.jpg'),
                const LoginBtn(
                  // callback: () => context.read<LoginBloc>().add(const ReqGoogleSignIn()),
                  // callback: () => getIt<BuildContext>().read<LoginBloc>().add(const ReqGoogleSignIn()),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}