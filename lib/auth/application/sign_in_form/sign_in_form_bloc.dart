// ignore: depend_on_referenced_packages
import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/auth_failure.dart';
import '../../domain/i_auth_facade.dart';
import '../../domain/user/i_user_repository.dart';
import '../../domain/value_objects.dart';
import '../../infrastructure/firebase_user_mapper.dart';

part 'sign_in_form_bloc.freezed.dart';
part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this._authFacade, this._userRepository)
      : super(SignInFormState.initial()) {
    on<SignInWithEmailAndPasswordPressed>(
      signInWithEmailAndPassword,
    );
    on<RegisterWithEmailAndPasswordPressed>(
      registerWithEmailAndPassword,
    );
    on<SignInWithGooglePressed>(
      signInWithGoogle,
    );
    on<EmailChanged>(
      changeEmailAddress,
    );
    on<PasswordChanged>(
      changePassword,
    );
    on<SendPasswordResetEmail>(
      sendPasswordResetEmail,
    );
    on<SendVerificationEmail>(
      sendVerificationEmail,
    );
    on<CheckVerificationStatus>(
      checkVerificationStatus,
    );
    on<EmailVerified>(
      emailVerified,
    );
  }

  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  void changeEmailAddress(EmailChanged event, Emitter<SignInFormState> emit) {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.email),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  void changePassword(PasswordChanged event, Emitter<SignInFormState> emit) {
    emit(
      state.copyWith(
        password: Password(event.password),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> registerWithEmailAndPassword(
    RegisterWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showValidatorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  Future<void> signInWithEmailAndPassword(
    SignInWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();

    if (isEmailValid && isPasswordValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );

      failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showValidatorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  Future<void> signInWithGoogle(
    SignInWithGooglePressed event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _authFacade.signInWithGoogle();

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  Future<void> sendPasswordResetEmail(
    SendPasswordResetEmail event,
    Emitter<SignInFormState> emit,
  ) async {
    if (!state.emailAddress.isValid()) {
      emit(
        state.copyWith(
          showValidatorMessages: true,
          authFailureOrSuccessOption: none(),
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        isSubmitting: true,
        authFailureOrSuccessOption: none(),
      ),
    );

    final failureOrSuccess = await _authFacade.sendPasswordResetEmail(
      emailAddress: state.emailAddress,
    );

    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  Future<void> sendVerificationEmail(
    SendVerificationEmail event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        isSubmitting: true,
        // verificationEmailAttempts: state.verificationEmailAttempts - 1,
        authFailureOrSuccessOption: none(),
      ),
    );
    await _authFacade.sendVerificationEmail();
    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> checkVerificationStatus(
    CheckVerificationStatus event,
    Emitter<SignInFormState> emit,
  ) async {
    var verified = false;
    Timer.periodic(const Duration(seconds: 3), (timer) async {
      verified = await _authFacade.isEmailVerified();
      if (verified) {
        timer.cancel();
        add(const EmailVerified());
      }
    });
  }

  Future<void> emailVerified(
    EmailVerified event,
    Emitter<SignInFormState> emit,
  ) async {
    await _userRepository.create(
      _authFacade
          .getSignedInUser()
          .fold(() => throw Exception(), (user) => user.toDomain()),
    );
    emit(
      state.copyWith(authFailureOrSuccessOption: some(right(unit))),
    );
  }
}
