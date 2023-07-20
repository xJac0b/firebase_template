import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../application/counter/bloc/counter_bloc.dart';
import '../../shared/widgets/loading_indicator.dart';
import 'widgets/counter_text.dart';

class CounterPageView extends StatelessWidget {
  const CounterPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return state.map(
            loading: (_) => const LoadingIndicator(),
            loadSuccess: (state) => Center(child: CounterText(state.value)),
            loadError: (state) => Text(
              state.failure.map(
                unexpected: (_) => 'unexpected',
                insufficientPermission: (_) => 'insufficientPermission',
                unableToUpdate: (_) => 'unableToUpdate',
              ),
            ),
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'increment',
            onPressed: () => context
                .read<CounterBloc>()
                .add(const CounterEvent.incrementPressed()),
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            heroTag: 'decrement',
            onPressed: () => context
                .read<CounterBloc>()
                .add(const CounterEvent.decrementPressed()),
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
