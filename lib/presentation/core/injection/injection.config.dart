// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kanban_board/application/board/bloc/board_bloc.dart' as _i17;
import 'package:kanban_board/application/home/bloc/home_bloc.dart' as _i12;
import 'package:kanban_board/application/login_social/bloc/login_bloc.dart'
    as _i13;
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart'
    as _i18;
import 'package:kanban_board/application/splash/bloc/splash_bloc.dart' as _i7;
import 'package:kanban_board/application/task/bloc/task_bloc.dart' as _i16;
import 'package:kanban_board/domain/board/board_repo.dart' as _i10;
import 'package:kanban_board/domain/projects/projects_repo.dart' as _i14;
import 'package:kanban_board/domain/user/user_repo.dart' as _i8;
import 'package:kanban_board/infrastructure/local/secure_storage.dart' as _i6;
import 'package:kanban_board/infrastructure/remote/board_repo_impl.dart'
    as _i11;
import 'package:kanban_board/infrastructure/remote/projects_repo_impl.dart'
    as _i15;
import 'package:kanban_board/infrastructure/remote/user_repo_impl.dart' as _i9;
import 'package:kanban_board/presentation/core/injection/injectable_module.dart'
    as _i19;
import 'package:kanban_board/presentation/core/routes/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final injectableModule = _$InjectableModule();
    gh.singleton<_i3.AppRouter>(injectableModule.appRouter);
    gh.lazySingleton<_i4.FirebaseAuth>(() => injectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(() => injectableModule.firestore);
    gh.lazySingleton<_i6.SecureStorageRepository>(
        () => _i6.LocalSecureStorage());
    gh.factory<_i7.SplashBloc>(
        () => _i7.SplashBloc(gh<_i6.SecureStorageRepository>()));
    gh.lazySingleton<_i8.UserRepository>(() => _i9.UserRepositoryImplement());
    gh.lazySingleton<_i10.BoardRepository>(() => _i11.BoardRepositoryImplement(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.SecureStorageRepository>(),
        ));
    gh.factory<_i12.HomeBloc>(
        () => _i12.HomeBloc(gh<_i6.SecureStorageRepository>()));
    gh.factory<_i13.LoginBloc>(() => _i13.LoginBloc(
          gh<_i4.FirebaseAuth>(),
          gh<_i8.UserRepository>(),
          gh<_i6.SecureStorageRepository>(),
        ));
    gh.lazySingleton<_i14.ProjectsRepository>(
        () => _i15.ProjectsRepositoryImplement(
              gh<_i5.FirebaseFirestore>(),
              gh<_i6.SecureStorageRepository>(),
            ));
    gh.factory<_i16.TaskBloc>(() => _i16.TaskBloc(
          gh<_i14.ProjectsRepository>(),
          gh<_i10.BoardRepository>(),
          gh<_i6.SecureStorageRepository>(),
        ));
    gh.factory<_i17.BoardBloc>(
        () => _i17.BoardBloc(gh<_i10.BoardRepository>()));
    gh.factory<_i18.ProjectsBloc>(() => _i18.ProjectsBloc(
          gh<_i14.ProjectsRepository>(),
          gh<_i6.SecureStorageRepository>(),
        ));
    return this;
  }
}

class _$InjectableModule extends _i19.InjectableModule {}
