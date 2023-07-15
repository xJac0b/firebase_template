import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth/auth_bloc.dart';
import '../../../core/routes/router.gr.dart';

class LogoutDetector extends StatelessWidget {
  const LogoutDetector({
    Key? key,
    this.child,
  }) : super(key: key);
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          unauthenticated: (_) =>
              context.router.replaceAll([const LoginRoute()]),
          orElse: () {},
        );
      },
      child: child,
    );
  }
}
