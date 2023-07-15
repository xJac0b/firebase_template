import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth/auth_bloc.dart';
import '../../../core/utils/extensions.dart';
import '../../auth/pages/fill_data/widgets/avatar_upload.dart';
import '../../shared/widgets/default_padding.dart';

class ProfilePageView extends StatelessWidget {
  const ProfilePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: DefaultPadding(
        child: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) => state.maybeMap(
            authenticated: (state) => Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  if (state.user.photoUrl != null)
                    AvatarUpload(
                      image: Image.network(state.user.photoUrl!),
                    ),
                  Text(
                    state.user.displayName!.getOrCrash(),
                    textAlign: TextAlign.start,
                    style: context.textTheme.headlineLarge,
                  ),
                  Text(
                    '${state.user.email.getOrCrash()}\n${state.user.dateOfBirth!.value.fold((l) => l, (r) => r)}',
                  ),
                  if (state.user.male!)
                    const Icon(Icons.male)
                  else
                    const Icon(Icons.female)
                ],
              ),
            ),
            orElse: () => const CircularProgressIndicator(),
          ),
        ),
      ),
    );
  }
}
