import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/i_auth_facade.dart';
import '../../domain/user/i_user_repository.dart';
import '../../domain/value_objects.dart';
import '../../infrastructure/firebase_user_mapper.dart';

part 'fill_data_bloc.freezed.dart';
part 'fill_data_event.dart';
part 'fill_data_state.dart';

@injectable
class FillDataBloc extends Bloc<FillDataEvent, FillDataState> {
  FillDataBloc(
    this._userRepository,
    this._authFacade,
  ) : super(FillDataState.initial()) {
    on<NameChanged>(changeName);
    on<GenderChanged>(changeGender);
    on<DateOfBirthChanged>(changeDateOfBirth);
    on<Saved>(save);
  }
  final IUserRepository _userRepository;
  final IAuthFacade _authFacade;

  void changeName(NameChanged event, Emitter<FillDataState> emit) {
    emit(
      state.copyWith(
        displayName: DisplayName(event.name),
      ),
    );
  }

  void changeGender(GenderChanged event, Emitter<FillDataState> emit) {
    emit(
      state.copyWith(
        male: event.male,
      ),
    );
  }

  void changeDateOfBirth(
      DateOfBirthChanged event, Emitter<FillDataState> emit,) {
    emit(
      state.copyWith(
        dateOfBirth: DateOfBirth(event.date),
      ),
    );
  }

  Future<void> save(Saved event, Emitter<FillDataState> emit) async {
    final isDisplayNameValid = state.displayName.isValid();
    final isDateOfBirthValid = state.dateOfBirth.isValid();
    var success = false;
    if (isDisplayNameValid && isDateOfBirthValid) {
      emit(
        state.copyWith(isSubmitting: true),
      );
      final _user = _authFacade.getSignedInUser();
      await _user.fold(() => null, (t) async {
        await t.updateDisplayName(state.displayName.getOrCrash());
        final user = t.toDomain().copyWith(
              filled: true,
              dateOfBirth: state.dateOfBirth,
              male: state.male,
            );
        await _userRepository.update(user);
        success = true;
      });
    }
    emit(
      state.copyWith(
        success: success,
        isSubmitting: false,
        showValidatorMessages: true,
      ),
    );
  }
}
