// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:connectivity_plus/connectivity_plus.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:firebase_storage/firebase_storage.dart' as _i7;
import 'package:firebase_template/application/auth/auth/auth_bloc.dart' as _i16;
import 'package:firebase_template/application/auth/fill_data/fill_data_bloc.dart'
    as _i18;
import 'package:firebase_template/application/auth/sign_in_form/sign_in_form_bloc.dart'
    as _i15;
import 'package:firebase_template/core/injection/connectivity.module.dart'
    as _i20;
import 'package:firebase_template/core/injection/firebase_injectable.module.dart'
    as _i19;
import 'package:firebase_template/core/routes/guards.dart' as _i17;
import 'package:firebase_template/core/routes/router.dart' as _i3;
import 'package:firebase_template/domain/auth/i_auth_facade.dart' as _i9;
import 'package:firebase_template/domain/storage/i_storage_repository.dart'
    as _i11;
import 'package:firebase_template/domain/user/i_user_repository.dart' as _i13;
import 'package:firebase_template/infrastructure/auth/firebase_auth_facade.dart'
    as _i10;
import 'package:firebase_template/infrastructure/storage/storage_repository.dart'
    as _i12;
import 'package:firebase_template/infrastructure/user/user_repository.dart'
    as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

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
    final connectivityInjectableModule = _$ConnectivityInjectableModule();
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.Connectivity>(
        () => connectivityInjectableModule.connectivity);
    gh.lazySingleton<_i5.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i6.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i7.FirebaseStorage>(
        () => firebaseInjectableModule.firebaseStorage);
    gh.lazySingleton<_i8.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
          gh<_i5.FirebaseAuth>(),
          gh<_i8.GoogleSignIn>(),
        ));
    gh.lazySingleton<_i11.IStorageRepository>(
        () => _i12.StorageRepository(gh<_i7.FirebaseStorage>()));
    gh.lazySingleton<_i13.IUserRepository>(
        () => _i14.UserRepository(gh<_i6.FirebaseFirestore>()));
    gh.factory<_i15.SignInFormBloc>(() => _i15.SignInFormBloc(
          gh<_i9.IAuthFacade>(),
          gh<_i13.IUserRepository>(),
        ));
    gh.factory<_i16.AuthBloc>(() => _i16.AuthBloc(
          gh<_i9.IAuthFacade>(),
          gh<_i13.IUserRepository>(),
        ));
    gh.factory<_i17.AuthGuard>(() => _i17.AuthGuard(
          gh<_i9.IAuthFacade>(),
          gh<_i13.IUserRepository>(),
        ));
    gh.factory<_i18.FillDataBloc>(() => _i18.FillDataBloc(
          gh<_i13.IUserRepository>(),
          gh<_i9.IAuthFacade>(),
          gh<_i11.IStorageRepository>(),
        ));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i19.FirebaseInjectableModule {}

class _$ConnectivityInjectableModule
    extends _i20.ConnectivityInjectableModule {}
