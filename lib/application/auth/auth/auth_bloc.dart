// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/user/i_user_repository.dart';
import '../../../domain/user/user.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authFacade, this._userRepository)
      : super(const AuthState.initial()) {
    on<AuthCheckRequested>(authCheckRequested);
    on<SignedOut>(signedOut);

    _authFacade.authStateChanges().listen((user) async {
      add(AuthCheckRequested(user));
    });
  }

  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  Future<void> authCheckRequested(
    AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    if (event.user == null) {
      emit(const AuthState.unauthenticated());
    } else {
      final userOrFailure = await _userRepository.get(event.user!);
      await userOrFailure.fold(
        (l) async => emit(const AuthState.unauthenticated()),
        (r) async => emit(AuthState.authenticated(r)),
      );
    }
  }

  Future<void> signedOut(
    SignedOut event,
    Emitter<AuthState> emit,
  ) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated());
  }
}
