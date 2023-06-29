import 'package:flutter/material.dart';

import '../../../../app/app.dart';
import 'widgets/login_form.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: DefaultPadding(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginForm(),
          ],
        ),
      )),
    );
  }
}
