import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/shared/failures/database_failure.dart';
import '../../../domain/storage/i_storage_repository.dart';
import '../../../domain/user/i_user_repository.dart';
import '../../../infrastructure/shared/firebase_storage_helpers.dart';
import '../../../infrastructure/shared/firebase_user_mapper.dart';

part 'fill_data_bloc.freezed.dart';
part 'fill_data_event.dart';
part 'fill_data_state.dart';

@injectable
class FillDataBloc extends Bloc<FillDataEvent, FillDataState> {
  FillDataBloc(
    this._userRepository,
    this._authFacade,
    this._storageRepository,
  ) : super(FillDataState.initial()) {
    on<_NameChanged>(changeName);
    on<_GenderChanged>(changeGender);
    on<_DateOfBirthChanged>(changeDateOfBirth);
    on<_SelectPicture>(selectPicture);
    on<_Saved>(save);
  }

  final IUserRepository _userRepository;
  final IAuthFacade _authFacade;
  final IStorageRepository _storageRepository;

  void changeName(_NameChanged event, Emitter<FillDataState> emit) {
    emit(
      state.copyWith(
        displayName: DisplayName(event.name),
      ),
    );
  }

  void changeGender(_GenderChanged event, Emitter<FillDataState> emit) {
    emit(
      state.copyWith(
        male: event.male,
      ),
    );
  }

  void changeDateOfBirth(
    _DateOfBirthChanged event,
    Emitter<FillDataState> emit,
  ) {
    emit(
      state.copyWith(
        dateOfBirth: DateOfBirth(event.date),
      ),
    );
  }

  Future<void> selectPicture(
    _SelectPicture event,
    Emitter<FillDataState> emit,
  ) async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      emit(
        state.copyWith(
          picture: result.files.first,
        ),
      );
    }
  }

  Future<void> save(_Saved event, Emitter<FillDataState> emit) async {
    final isDisplayNameValid = state.displayName.isValid();
    final isDateOfBirthValid = state.dateOfBirth.isValid();
    Either<DatabaseFailure, Unit>? failureOrSuccess;
    if (isDisplayNameValid && isDateOfBirthValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          databaseFailureOrSuccessOption: none(),
        ),
      );
      final _user = _authFacade.getSignedInUser();
      String? photoUrl;
      await _user.fold(() => null, (t) async {
        if (state.picture != null) {
          final ref = await FirebaseStorageX.userAvatar(t.uid);
          await _storageRepository.uploadByRef(
            ref,
            File(state.picture!.path!),
          );
          photoUrl = await _storageRepository.downloadByRef(ref);
        }
        await t.updateDisplayName(state.displayName.getOrCrash());
        final user = t.toDomain().copyWith(
              filled: true,
              dateOfBirth: state.dateOfBirth,
              male: state.male,
              displayName: state.displayName,
              photoUrl: photoUrl,
            );
        failureOrSuccess = await _userRepository.update(user);
      });
    }
    emit(
      state.copyWith(
        databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        isSubmitting: false,
        showValidatorMessages: true,
      ),
    );
  }
}
