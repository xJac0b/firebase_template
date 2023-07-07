import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/auth/i_auth_facade.dart';
import '../../../domain/auth/user/i_user_repository.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../infrastructure/firebase_user_mapper.dart';

part 'fill_data_bloc.freezed.dart';
part 'fill_data_event.dart';
part 'fill_data_state.dart';

@injectable
class FillDataBloc extends Bloc<FillDataEvent, FillDataState> {
  FillDataBloc(
    this._userRepository,
    this._authFacade,
    this._firebaseStorage,
  ) : super(FillDataState.initial()) {
    on<_NameChanged>(changeName);
    on<_GenderChanged>(changeGender);
    on<_DateOfBirthChanged>(changeDateOfBirth);
    on<_SelectPicture>(selectPicture);
    on<_Saved>(save);
  }

  final IUserRepository _userRepository;
  final IAuthFacade _authFacade;
  final FirebaseStorage _firebaseStorage;

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
    var success = false;
    if (isDisplayNameValid && isDateOfBirthValid) {
      emit(
        state.copyWith(isSubmitting: true),
      );

      final _user = _authFacade.getSignedInUser();
      await _user.fold(() => null, (t) async {
        await t.updatePhotoURL(await uploadAvatar(t));
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

  Future<String> uploadAvatar(User t) async {
    final path = 'avatars/${t.uid}.png';
    final file = File(state.picture!.path!);
    final ref = _firebaseStorage.ref().child(path);
    await ref.putFile(file);
    return path;
  }
}
