import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/sign_in_form/sign_in_form_bloc.dart';
import '../../../../core/routes/router.gr.dart';
import '../../../../core/utils/extensions.dart';
import '../../../../l10n/l10n.dart';
import '../../../shared/widgets/default_padding.dart';
import '../../../shared/widgets/logout_button.dart';
import '../../widgets/logout_detector.dart';
import '../../widgets/two_text_parts_button.dart';
import '../../widgets/wide_button.dart';

class VerificationPageView extends StatelessWidget {
  const VerificationPageView({Key? key, required this.email}) : super(key: key);
  final String email;
  @override
  Widget build(BuildContext context) {
    return LogoutDetector(
      child: BlocConsumer<SignInFormBloc, SignInFormState>(
        listener: (context, state) {
          state.authFailureOrSuccessOption.fold(
            () => null,
            (t) => t.fold(
              (l) => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    context.l10n.emailNotVerified,
                  ),
                ),
              ),
              (r) => {
                context.router.push(const HomeRoute()),
              },
            ),
          );
        },
        builder: (context, state) {
          return SafeArea(
            child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: AppBar(
                actions: const [LogoutButton()],
              ),
              body: state.isSubmitting
                  ? const Center(child: CircularProgressIndicator())
                  : DefaultPadding(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Text(
                                context.l10n.verifyEmailHeading,
                                style: context.textTheme.headlineLarge,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                style: context.textTheme.titleLarge,
                                textAlign: TextAlign.center,
                                context.l10n.verifyEmailInfo(email),
                              ),
                            ],
                          ),
                          TwoTextPartsButton(
                            onTap: () => context.read<SignInFormBloc>().add(
                                  const SignInFormEvent.sendVerificationEmail(),
                                ),
                            leadingText: context.l10n.verifyEmailResend1,
                            buttonText: context.l10n.verifyEmailResend2,
                          ),
                          WideButton(
                            label: context.l10n.check,
                            onPressed: () {
                              context.read<SignInFormBloc>().add(
                                    const SignInFormEvent
                                        .checkVerificationStatus(),
                                  );
                            },
                          )
                        ],
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('email', email));
  }
}
