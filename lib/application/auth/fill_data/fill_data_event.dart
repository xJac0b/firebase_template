part of 'fill_data_bloc.dart';

@freezed
class FillDataEvent with _$FillDataEvent {
  const factory FillDataEvent.nameChanged({required String name}) = NameChanged;
  const factory FillDataEvent.genderChanged({required bool male}) =
      GenderChanged;
  const factory FillDataEvent.dateOfBirthChanged({required DateTime date}) =
      DateOfBirthChanged;
  const factory FillDataEvent.saved() = Saved;
}
