part of 'fill_data_bloc.dart';

@freezed
class FillDataEvent with _$FillDataEvent {
  const factory FillDataEvent.nameChanged({required String name}) = _NameChanged;
  const factory FillDataEvent.genderChanged({required bool male}) =
      _GenderChanged;
  const factory FillDataEvent.dateOfBirthChanged({required DateTime date}) =
      _DateOfBirthChanged;
  const factory FillDataEvent.selectPicture() =
      _SelectPicture;

  const factory FillDataEvent.saved() = _Saved;
}
