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
              context.router.push(
                const VerificationRoute(),
              );
              context.read<SignInFormBloc>().add(
                    const SignInFormEvent.sendVerificationEmail(),
                  );
            },
          ),
        );
      },
      builder: (context, state) {
        if (state.isSubmitting ||
            state.authFailureOrSuccessOption
                .fold(() => false, (t) => t.fold((l) => false, (r) => true))) {
          return const LoadingIndicator();
        } else {
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
                PasswordFormField(
                  password: state.password,
                  showValidatorMessages: state.showValidatorMessages,
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
                TwoTextPartsButton(
                  leadingText: context.l10n.alreadyRegistered,
                  buttonText: context.l10n.loginButton,
                  onTap: () => context.router.replace(const LoginRoute()),
                )
              ],
            ),
          );
        }
      },
    );
  }
}
