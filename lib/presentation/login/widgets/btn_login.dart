
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kanban_board/application/login_social/bloc/login_bloc.dart';
import 'package:kanban_board/presentation/core/global_widgets.dart';

class LoginBtn extends StatelessWidget {
  const LoginBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.read<LoginBloc>().add(const ReqGoogleSignIn()),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.indigo[400],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      child: GlobalWidgets().text(
        txt: 'Login with Google Account',
        color: Colors.white,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
