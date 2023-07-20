part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.loadingStarted() = _LoadingStarted;
  const factory CounterEvent.incrementPressed() = _IncrementPressed;
  const factory CounterEvent.decrementPressed() = _DecrementPressed;
}
