import 'package:flutter/material.dart';

import '../../../../app/app.dart';
import 'widgets/register_form.dart';

class RegisterPageView extends StatelessWidget {
  const RegisterPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
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
