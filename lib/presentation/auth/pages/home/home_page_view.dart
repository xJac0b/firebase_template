import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../application/auth/auth/auth_bloc.dart';
import '../../../../core/injection/injection.dart';
import '../../../../domain/user/i_user_repository.dart';
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
                  children: [
                    Text('Male:${state.user.male}'),
                    Text(state.user.displayName!.getOrCrash()),
                    ElevatedButton(
                      onPressed: () {
                        getIt<IUserRepository>().update(
                          state.user.copyWith(male: !state.user.male!),
                        );
                      },
                      child: Text(state.user.dateOfBirth.toString()),
                    )
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
