import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../l10n/l10n.dart';
import '../../../../../routes/router.gr.dart';
import '../../../../application/auth_bloc.dart';
import '../../../../application/sign_in_form/sign_in_form_bloc.dart';
import '../../../widgets/email_form_field.dart';
import '../../../widgets/password_form_field.dart';
import '../../../widgets/switch_form_button.dart';
import '../../../widgets/wide_button.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    failure.maybeMap(
                      cancelledByUser: (_) => context.l10n.cancelled,
                      serverError: (_) => context.l10n.serverError,
                      emailAlreadyInUse: (_) => context.l10n.emailAlreadyInUse,
                      orElse: () => context.l10n.serverError,
                    ),
                  ),
                ),
              );
            },
            (_) {
              // context.router.replace(
              // VerificationRoute(email: state.emailAddress.getOrCrash()));
              context.read<AuthBloc>().add(
                    const AuthEvent.authCheckRequested(),
                  );
              // context.read<SignInFormBloc>().add(
              // const SignInFormEvent.sendVerificationEmail(),
              // );
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          child: Column(
            children: [
              EmailFormField(
                showValidatorMessages: state.showValidatorMessages,
                emailAddress: state.emailAddress,
              ),
              const SizedBox(
                height: 20,
              ),
              Tooltip(
                message: 'Password Assistance',
                child: PasswordFormField(
                  password: state.password,
                  showValidatorMessages: state.showValidatorMessages,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              WideButton(
                onPressed: () => context.read<SignInFormBloc>().add(
                      const SignInFormEvent
                          .registerWithEmailAndPasswordPressed(),
                    ),
                label: context.l10n.registerButton,
              ),
              const SizedBox(
                height: 30,
              ),
              SwitchFormButton(
                leadingText: context.l10n.alreadyRegistered,
                buttonText: context.l10n.loginButton,
                route: const LoginRoute(),
              )
            ],
          ),
        );
      },
    );
  }
}
