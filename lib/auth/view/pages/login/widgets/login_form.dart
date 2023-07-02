import 'package:auto_route/auto_route.dart';
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

class LoginForm extends StatelessWidget {
  const LoginForm({
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
                      invalidEmailAndPasswordCombination: (_) =>
                          context.l10n.invalidEmailAndPasswordCombination,
                      orElse: () => context.l10n.serverError,
                    ),
                  ),
                ),
              );
            },
            (_) {
              context
                  .read<AuthBloc>()
                  .add(const AuthEvent.authCheckRequested());
              context.router.push(const HomeRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return state.isSubmitting ||
                state.authFailureOrSuccessOption
                    .fold(() => false, (t) => t.fold((l) => false, (r) => true))
            ? const Center(child: CircularProgressIndicator())
            : Form(
                child: Column(
                  children: [
                    EmailFormField(
                      emailAddress: state.emailAddress,
                      showValidatorMessages: state.showValidatorMessages,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    PasswordFormField(
                      onPressed: () =>
                          context.router.push(const ResetPasswordRoute()),
                      password: state.password,
                      showValidatorMessages: state.showValidatorMessages,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    WideButton(
                      label: context.l10n.loginButton,
                      onPressed: () => context.read<SignInFormBloc>().add(
                            const SignInFormEvent
                                .signInWithEmailAndPasswordPressed(),
                          ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SwitchFormButton(
                      leadingText: context.l10n.noAccount,
                      buttonText: context.l10n.registerButton,
                      route: const RegisterRoute(),
                    )
                  ],
                ),
              );
      },
    );
  }
}
