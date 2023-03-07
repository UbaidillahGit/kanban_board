import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/presentation/core/injection/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void initInjection(String env) => getIt.init();