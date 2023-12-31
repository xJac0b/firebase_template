import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../shared/widgets/default_padding.dart';
import 'widgets/login_form.dart';

class LoginPageView extends StatelessWidget {
  const LoginPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      resizeToAvoidBottomInset: false,
      body: Center(
        child: DefaultPadding(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.firebase.image(width: 100),
              const LoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
