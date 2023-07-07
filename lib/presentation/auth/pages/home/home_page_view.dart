import 'package:flutter/material.dart';

import '../../../shared/widgets/default_padding.dart';
import '../../../shared/widgets/logout_button.dart';
import '../../widgets/logout_detector.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LogoutDetector(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          actions: const [
            LogoutButton(),
          ],
        ),
        body: const Center(
          child: DefaultPadding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Center(child: Text('Home Page'))],
            ),
          ),
        ),
      ),
    );
  }
}
