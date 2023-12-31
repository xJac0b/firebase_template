import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth/auth_bloc.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () =>
          context.read<AuthBloc>().add(const AuthEvent.signedOut()),
      icon: const Icon(Icons.logout),
    );
  }
}
