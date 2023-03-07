// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:kanban_board/application/board/bloc/board_bloc.dart' as _i15;
import 'package:kanban_board/application/home/bloc/home_bloc.dart' as _i11;
import 'package:kanban_board/application/login_social/bloc/login_bloc.dart'
    as _i12;
import 'package:kanban_board/application/projects/bloc/projects_bloc.dart'
    as _i16;
import 'package:kanban_board/application/splash/bloc/splash_bloc.dart' as _i7;
import 'package:kanban_board/application/task/bloc/task_bloc.dart' as _i14;
import 'package:kanban_board/infrastructure/local/secure_storage_repo.dart'
    as _i6;
import 'package:kanban_board/infrastructure/remote/auth_repo.dart' as _i9;
import 'package:kanban_board/infrastructure/remote/board_repo.dart' as _i10;
import 'package:kanban_board/infrastructure/remote/projects_repo.dart' as _i13;
import 'package:kanban_board/infrastructure/remote/user_repo.dart' as _i8;
import 'package:kanban_board/presentation/core/injection/injectable_module.dart'
    as _i17;
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
    gh.lazySingleton<_i8.UserRepository>(() => _i8.UserRepositoryImplement());
    gh.lazySingleton<_i9.AuthRepository>(
        () => _i9.AuthRepositoryImplements(gh<_i6.SecureStorageRepository>()));
    gh.lazySingleton<_i10.BoardRepository>(() => _i10.BoardRepositoryImplement(
          gh<_i5.FirebaseFirestore>(),
          gh<_i6.SecureStorageRepository>(),
        ));
    gh.factory<_i11.HomeBloc>(() => _i11.HomeBloc(
          gh<_i6.SecureStorageRepository>(),
          gh<_i9.AuthRepository>(),
        ));
    gh.factory<_i12.LoginBloc>(() => _i12.LoginBloc(
          gh<_i4.FirebaseAuth>(),
          gh<_i9.AuthRepository>(),
          gh<_i6.SecureStorageRepository>(),
          gh<_i8.UserRepository>(),
        ));
    gh.lazySingleton<_i13.ProjectsRepository>(
        () => _i13.ProjectsRepositoryImplement(
              gh<_i5.FirebaseFirestore>(),
              gh<_i6.SecureStorageRepository>(),
            ));
    gh.factory<_i14.TaskBloc>(() => _i14.TaskBloc(
          gh<_i13.ProjectsRepository>(),
          gh<_i10.BoardRepository>(),
          gh<_i6.SecureStorageRepository>(),
        ));
    gh.factory<_i15.BoardBloc>(
        () => _i15.BoardBloc(gh<_i10.BoardRepository>()));
    gh.factory<_i16.ProjectsBloc>(() => _i16.ProjectsBloc(
          gh<_i13.ProjectsRepository>(),
          gh<_i6.SecureStorageRepository>(),
        ));
    return this;
  }
}

class _$InjectableModule extends _i17.InjectableModule {}
