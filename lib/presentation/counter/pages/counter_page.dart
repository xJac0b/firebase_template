import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/auth/auth/auth_bloc.dart';
import '../../../application/counter/bloc/counter_bloc.dart';
import '../../../core/injection/injection.dart';
import '../../auth/widgets/logout_detector.dart';
import 'counter_page_view.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CounterBloc>(
        param1: context.read<AuthBloc>().state.maybeMap(
              authenticated: (state) => state.user.id.getOrCrash(),
              orElse: () =>
                  throw Exception('At counter page must be authenticated'),
            ),
      ),
      child: const LogoutDetector(child: CounterPageView()),
    );
  }
}
