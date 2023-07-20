part of 'counter_bloc.dart';

@freezed
class CounterState with _$CounterState {
  const factory CounterState.loading() = _Loading;
  const factory CounterState.loadSuccess(int value) = _LoadSuccess;
  const factory CounterState.loadError(DatabaseFailure failure) = _LoadError;
}
