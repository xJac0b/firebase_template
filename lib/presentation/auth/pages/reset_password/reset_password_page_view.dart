import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';
import '../../../shared/widgets/default_padding.dart';
import 'widgets/reset_password_form.dart';

class ResetPasswordPageView extends StatelessWidget {
  const ResetPasswordPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        resizeToAvoidBottomInset: false,
        body: DefaultPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DefaultPadding(
                child: Text(
                  context.l10n.forgotPassword,
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              const SizedBox(height: 10),
              DefaultPadding(
                child: Text(
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  textAlign: TextAlign.center,
                  context.l10n.resetPasswordInfo,
                ),
              ),
              const SizedBox(height: 20),
              const ResetPaswordForm(),
            ],
          ),
        ),
      ),
    );
  }
}
