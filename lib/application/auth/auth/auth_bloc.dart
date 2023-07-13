import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/user/i_user_repository.dart';
import '../../../domain/user/user.dart';
import '../../../infrastructure/shared/firebase_user_mapper.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authFacade, this._userRepository)
      : super(const AuthState.initial()) {
    on<AuthCheckRequested>(authCheckRequested);
    on<SignedOut>(signedOut);
    on<UserUpdated>(userUpdated);

    _authFacade.userChanges().listen((user) async {
      add(AuthCheckRequested(user));
    });
  }

  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;
  StreamSubscription<DocumentSnapshot<Object?>>? userDocumentChanges;

  Future<void> authCheckRequested(
    AuthCheckRequested event,
    Emitter<AuthState> emit,
  ) async {
    if (event.user == null) {
      if (state != const Unauthenticated()) {
        add(const SignedOut());
      }
      return;
    } else if (!event.user!.emailVerified) {
      emit(AuthState.authenticated(event.user!.toDomain()));
    } else {
      final userOrFailure = await _userRepository.get(event.user!);
      await userOrFailure.fold(
        (l) async => add(const SignedOut()),
        (r) async {
          emit(AuthState.authenticated(r));
          await userDocumentChanges?.cancel();
          final changesStream = await _userRepository.changes(event.user!.uid);
          userDocumentChanges = changesStream.listen(
            (event) {
              _authFacade
                  .getSignedInUser()
                  .fold(() => null, (t) => add(UserUpdated(t)));
            },
          );
        },
      );
    }
  }

  Future<void> userUpdated(
    UserUpdated event,
    Emitter<AuthState> emit,
  ) async {
    final userOrFailure = await _userRepository.get(event.user);
    await userOrFailure.fold(
      (l) async => add(const SignedOut()),
      (r) async {
        emit(AuthState.authenticated(r));
      },
    );
  }

  Future<void> signedOut(
    SignedOut event,
    Emitter<AuthState> emit,
  ) async {
    await _authFacade.signOut();
    await userDocumentChanges?.cancel();
    emit(const AuthState.unauthenticated());
  }
}
