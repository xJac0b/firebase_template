import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../../core/routes/router.gr.dart';
import '../../../../../l10n/l10n.dart';
import '../../../../shared/widgets/loading_indicator.dart';
import '../../../../shared/widgets/wide_button.dart';
import '../../../widgets/email_form_field.dart';
import '../../../widgets/password_form_field.dart';
import '../../../widgets/two_text_parts_button.dart';

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
              context.router.replace(const HomeRoute());
            },
          ),
        );
      },
      builder: (context, state) {
        return state.isSubmitting ||
                state.authFailureOrSuccessOption
                    .fold(() => false, (t) => t.fold((l) => false, (r) => true))
            ? const LoadingIndicator()
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
                    TwoTextPartsButton(
                      leadingText: context.l10n.noAccount,
                      buttonText: context.l10n.registerButton,
                      onTap: () =>
                          context.router.replace(const RegisterRoute()),
                    )
                  ],
                ),
              );
      },
    );
  }
}
