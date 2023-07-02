import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../app/app.dart';
import '../../../../l10n/l10n.dart';
import '../../../../routes/router.gr.dart';
import '../../../../widgets/logout_button.dart';
import '../../../application/sign_in_form/sign_in_form_bloc.dart';
import '../../widgets/logout_detector.dart';
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
                                style:
                                    Theme.of(context).textTheme.headlineLarge,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                style: Theme.of(context).textTheme.titleLarge,
                                textAlign: TextAlign.center,
                                context.l10n.verifyEmailInfo(email),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () => context.read<SignInFormBloc>().add(
                                  const SignInFormEvent.sendVerificationEmail(),
                                ),
                            child: Text(context.l10n.verifyEmailResend),
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
