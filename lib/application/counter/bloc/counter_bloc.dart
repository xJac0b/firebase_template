import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/counter/i_counter_repository.dart';
import '../../../domain/shared/failures/database_failure.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

@injectable
class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc(this._counterRepository, @factoryParam this.uid)
      : super(const _Loading()) {
    on<_LoadingStarted>((event, emit) async {
      final res = await _counterRepository.get(uid);
      res.fold((l) => emit(_LoadError(l)), (r) => emit(_LoadSuccess(r)));
    });
    on<_IncrementPressed>((event, emit) async {
      await state.map(
        loading: (_) {},
        loadSuccess: (state) async {
          final res = await _counterRepository.update(uid, state.value + 1);
          res.fold(
            (l) => emit(_LoadError(l)),
            (r) => emit(_LoadSuccess(state.value + 1)),
          );
        },
        loadError: (state) {
          add(const _LoadingStarted());
        },
      );
    });
    on<_DecrementPressed>((event, emit) async {
      await state.map(
        loading: (_) {},
        loadSuccess: (state) async {
          final res = await _counterRepository.update(uid, state.value - 1);
          res.fold(
            (l) => emit(_LoadError(l)),
            (r) => emit(_LoadSuccess(state.value - 1)),
          );
        },
        loadError: (state) {
          add(const _LoadingStarted());
        },
      );
    });
    add(const _LoadingStarted());
  }

  final ICounterRepository _counterRepository;
  final String uid;
}
