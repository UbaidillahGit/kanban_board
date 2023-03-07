import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:kanban_board/presentation/core/injection/injection.config.dart';

final getIt = GetIt.instance;

@injectableInit
void initInjection(String env) {
// final ProjectsRepository projectsRepository = ProjectsRepository();
  // $initGetIt(getIt, environment: env);
  getIt.init();
  // getIt.registerFactory(() => TaskBloc(getIt(), getIt()));
  // getIt.registerLazySingleton(() => LoginBloc(FirebaseAuth.instance));
  // getIt.registerLazySingleton(() => CartOrdersEntities(list: [], subtotal: 0));
  // getIt.registerLazySingleton(() => CartProductEntities());
  // getIt.registerLazySingleton(() => ModelCart([], 0));
  // getIt.registerLazySingleton(() => ModelProduct(null, null, null, null));
}

// @InjectableInit()
// void configureDependencies() => $initGetIt(getIt);

// @InjectableInit(generateForDir: ['test'])  
// void configureDependencies() => getIt.init();