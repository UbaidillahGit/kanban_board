import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/firebase_options.dart';
import 'package:kanban_board/presentation/core/app_widget.dart';
import 'package:kanban_board/presentation/core/injection/injection.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform
  );
  initInjection(Environment.prod);
  runApp(const AppWidget());
}

