part of 'fill_data_bloc.dart';

@freezed
class FillDataState with _$FillDataState {
  factory FillDataState({
    required DateOfBirth dateOfBirth,
    required bool male,
    required DisplayName displayName,
    PlatformFile? picture,
    required bool showValidatorMessages,
    required bool isSubmitting,
    required bool success,
  }) = _FillDataState;

  const FillDataState._();

  factory FillDataState.initial() => FillDataState(
        dateOfBirth: DateOfBirth(DateTime.now()),
        male: true,
        displayName: DisplayName(''),
        showValidatorMessages: false,
        isSubmitting: false,
        success: false,
      );
}
