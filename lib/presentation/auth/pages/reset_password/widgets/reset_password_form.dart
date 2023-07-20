import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../../l10n/l10n.dart';
import '../../../../shared/widgets/default_padding.dart';
import '../../../../shared/widgets/loading_indicator.dart';
import '../../../../shared/widgets/wide_button.dart';
import '../../../widgets/email_form_field.dart';

class ResetPaswordForm extends StatelessWidget {
  const ResetPaswordForm({super.key});

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
                      userNotFound: (_) => context.l10n.userNotFound,
                      invalidEmail: (_) => context.l10n.invalidEmail,
                      orElse: () => context.l10n.serverError,
                    ),
                  ),
                ),
              );
            },
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(context.l10n.resetPasswordSuccess),
                ),
              );
              context.router.pop();
            },
          ),
        );
      },
      builder: (context, state) {
        return state.isSubmitting
            ? const LoadingIndicator()
            : Form(
                child: Column(
                  children: [
                    DefaultPadding(
                      child: EmailFormField(
                        emailAddress: state.emailAddress,
                        showValidatorMessages: state.showValidatorMessages,
                      ),
                    ),
                    const SizedBox(height: 20),
                    DefaultPadding(
                      child: WideButton(
                        onPressed: () {
                          context
                              .read<SignInFormBloc>()
                              .add(const SendPasswordResetEmail());
                        },
                        label: context.l10n.resetPasswordSubmit,
                      ),
                    )
                  ],
                ),
              );
      },
    );
  }
}
