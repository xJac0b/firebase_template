import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth/auth_bloc.dart';
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
        body: Center(
          child: DefaultPadding(
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) => state.maybeMap(
                authenticated: (state) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(state.user.displayName!.getOrCrash())],
                ),
                initial: (_) => const Text('Initial'),
                orElse: () => const Text('Not authenticated'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
