// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_template/auth/application/auth_bloc.dart' as _i12;
import 'package:firebase_template/auth/application/sign_in_form/sign_in_form_bloc.dart'
    as _i11;
import 'package:firebase_template/auth/domain/i_auth_facade.dart' as _i9;
import 'package:firebase_template/auth/domain/user/i_user_repository.dart'
    as _i7;
import 'package:firebase_template/auth/infrastructure/firebase_auth_facade.dart'
    as _i10;
import 'package:firebase_template/auth/infrastructure/firebase_injectable.module.dart'
    as _i13;
import 'package:firebase_template/auth/infrastructure/user/user_repository.dart'
    as _i8;
import 'package:firebase_template/routes/router.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
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
    final firebaseInjectableModule = _$FirebaseInjectableModule();
    gh.singleton<_i3.AppRouter>(_i3.AppRouter());
    gh.lazySingleton<_i4.FirebaseAuth>(
        () => firebaseInjectableModule.firebaseAuth);
    gh.lazySingleton<_i5.FirebaseFirestore>(
        () => firebaseInjectableModule.firestore);
    gh.lazySingleton<_i6.GoogleSignIn>(
        () => firebaseInjectableModule.googleSignIn);
    gh.lazySingleton<_i7.IUserRepository>(
        () => _i8.EntryRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i9.IAuthFacade>(() => _i10.FirebaseAuthFacade(
          gh<_i7.IUserRepository>(),
          gh<_i4.FirebaseAuth>(),
          gh<_i6.GoogleSignIn>(),
        ));
    gh.factory<_i11.SignInFormBloc>(
        () => _i11.SignInFormBloc(gh<_i9.IAuthFacade>()));
    gh.factory<_i12.AuthBloc>(() => _i12.AuthBloc(gh<_i9.IAuthFacade>()));
    return this;
  }
}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}
