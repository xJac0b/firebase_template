import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../routes/router.gr.dart';
import '../../application/auth/auth_bloc.dart';

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
          unauthenticated: (_) => context.router.replace(const LoginRoute()),
          orElse: () {},
        );
      },
      child: child,
    );
  }
}
