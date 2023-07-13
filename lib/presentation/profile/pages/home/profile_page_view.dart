import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth/auth_bloc.dart';
import '../../../auth/widgets/logout_detector.dart';
import '../../../shared/widgets/default_padding.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LogoutDetector(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: DefaultPadding(
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) => state.maybeMap(
                authenticated: (state) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(state.user.displayName!.getOrCrash()),
                  ],
                ),
                orElse: () => const CircularProgressIndicator(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
