import 'package:flutter/material.dart';

import '../../../../l10n/l10n.dart';
import '../../../shared/widgets/default_padding.dart';
import 'widgets/register_form.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(context.l10n.registerPageHeadline),
        automaticallyImplyLeading: false,
      ),
      resizeToAvoidBottomInset: false,
      body: const Center(
        child: DefaultPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}
