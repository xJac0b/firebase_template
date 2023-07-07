// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fill_data_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FillDataEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function() selectPicture,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function()? selectPicture,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function()? selectPicture,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_SelectPicture value) selectPicture,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_SelectPicture value)? selectPicture,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_SelectPicture value)? selectPicture,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillDataEventCopyWith<$Res> {
  factory $FillDataEventCopyWith(
          FillDataEvent value, $Res Function(FillDataEvent) then) =
      _$FillDataEventCopyWithImpl<$Res, FillDataEvent>;
}

/// @nodoc
class _$FillDataEventCopyWithImpl<$Res, $Val extends FillDataEvent>
    implements $FillDataEventCopyWith<$Res> {
  _$FillDataEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NameChangedCopyWith<$Res> {
  factory _$$_NameChangedCopyWith(
          _$_NameChanged value, $Res Function(_$_NameChanged) then) =
      __$$_NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_NameChangedCopyWithImpl<$Res>
    extends _$FillDataEventCopyWithImpl<$Res, _$_NameChanged>
    implements _$$_NameChangedCopyWith<$Res> {
  __$$_NameChangedCopyWithImpl(
      _$_NameChanged _value, $Res Function(_$_NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_NameChanged(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_NameChanged implements _NameChanged {
  const _$_NameChanged({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'FillDataEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      __$$_NameChangedCopyWithImpl<_$_NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function() selectPicture,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function()? selectPicture,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function()? selectPicture,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_SelectPicture value) selectPicture,
    required TResult Function(_Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_SelectPicture value)? selectPicture,
    TResult? Function(_Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_SelectPicture value)? selectPicture,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class _NameChanged implements FillDataEvent {
  const factory _NameChanged({required final String name}) = _$_NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$_NameChangedCopyWith<_$_NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GenderChangedCopyWith<$Res> {
  factory _$$_GenderChangedCopyWith(
          _$_GenderChanged value, $Res Function(_$_GenderChanged) then) =
      __$$_GenderChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool male});
}

/// @nodoc
class __$$_GenderChangedCopyWithImpl<$Res>
    extends _$FillDataEventCopyWithImpl<$Res, _$_GenderChanged>
    implements _$$_GenderChangedCopyWith<$Res> {
  __$$_GenderChangedCopyWithImpl(
      _$_GenderChanged _value, $Res Function(_$_GenderChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? male = null,
  }) {
    return _then(_$_GenderChanged(
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GenderChanged implements _GenderChanged {
  const _$_GenderChanged({required this.male});

  @override
  final bool male;

  @override
  String toString() {
    return 'FillDataEvent.genderChanged(male: $male)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenderChanged &&
            (identical(other.male, male) || other.male == male));
  }

  @override
  int get hashCode => Object.hash(runtimeType, male);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenderChangedCopyWith<_$_GenderChanged> get copyWith =>
      __$$_GenderChangedCopyWithImpl<_$_GenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function() selectPicture,
    required TResult Function() saved,
  }) {
    return genderChanged(male);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function()? selectPicture,
    TResult? Function()? saved,
  }) {
    return genderChanged?.call(male);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function()? selectPicture,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(male);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_SelectPicture value) selectPicture,
    required TResult Function(_Saved value) saved,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_SelectPicture value)? selectPicture,
    TResult? Function(_Saved value)? saved,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_SelectPicture value)? selectPicture,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class _GenderChanged implements FillDataEvent {
  const factory _GenderChanged({required final bool male}) = _$_GenderChanged;

  bool get male;
  @JsonKey(ignore: true)
  _$$_GenderChangedCopyWith<_$_GenderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DateOfBirthChangedCopyWith<$Res> {
  factory _$$_DateOfBirthChangedCopyWith(_$_DateOfBirthChanged value,
          $Res Function(_$_DateOfBirthChanged) then) =
      __$$_DateOfBirthChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_DateOfBirthChangedCopyWithImpl<$Res>
    extends _$FillDataEventCopyWithImpl<$Res, _$_DateOfBirthChanged>
    implements _$$_DateOfBirthChangedCopyWith<$Res> {
  __$$_DateOfBirthChangedCopyWithImpl(
      _$_DateOfBirthChanged _value, $Res Function(_$_DateOfBirthChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_DateOfBirthChanged(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateOfBirthChanged implements _DateOfBirthChanged {
  const _$_DateOfBirthChanged({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'FillDataEvent.dateOfBirthChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateOfBirthChanged &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateOfBirthChangedCopyWith<_$_DateOfBirthChanged> get copyWith =>
      __$$_DateOfBirthChangedCopyWithImpl<_$_DateOfBirthChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function() selectPicture,
    required TResult Function() saved,
  }) {
    return dateOfBirthChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function()? selectPicture,
    TResult? Function()? saved,
  }) {
    return dateOfBirthChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function()? selectPicture,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_SelectPicture value) selectPicture,
    required TResult Function(_Saved value) saved,
  }) {
    return dateOfBirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_SelectPicture value)? selectPicture,
    TResult? Function(_Saved value)? saved,
  }) {
    return dateOfBirthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_SelectPicture value)? selectPicture,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(this);
    }
    return orElse();
  }
}

abstract class _DateOfBirthChanged implements FillDataEvent {
  const factory _DateOfBirthChanged({required final DateTime date}) =
      _$_DateOfBirthChanged;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_DateOfBirthChangedCopyWith<_$_DateOfBirthChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectPictureCopyWith<$Res> {
  factory _$$_SelectPictureCopyWith(
          _$_SelectPicture value, $Res Function(_$_SelectPicture) then) =
      __$$_SelectPictureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SelectPictureCopyWithImpl<$Res>
    extends _$FillDataEventCopyWithImpl<$Res, _$_SelectPicture>
    implements _$$_SelectPictureCopyWith<$Res> {
  __$$_SelectPictureCopyWithImpl(
      _$_SelectPicture _value, $Res Function(_$_SelectPicture) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SelectPicture implements _SelectPicture {
  const _$_SelectPicture();

  @override
  String toString() {
    return 'FillDataEvent.selectPicture()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SelectPicture);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function() selectPicture,
    required TResult Function() saved,
  }) {
    return selectPicture();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function()? selectPicture,
    TResult? Function()? saved,
  }) {
    return selectPicture?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function()? selectPicture,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (selectPicture != null) {
      return selectPicture();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_SelectPicture value) selectPicture,
    required TResult Function(_Saved value) saved,
  }) {
    return selectPicture(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_SelectPicture value)? selectPicture,
    TResult? Function(_Saved value)? saved,
  }) {
    return selectPicture?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_SelectPicture value)? selectPicture,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (selectPicture != null) {
      return selectPicture(this);
    }
    return orElse();
  }
}

abstract class _SelectPicture implements FillDataEvent {
  const factory _SelectPicture() = _$_SelectPicture;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$FillDataEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'FillDataEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function() selectPicture,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function()? selectPicture,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function()? selectPicture,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NameChanged value) nameChanged,
    required TResult Function(_GenderChanged value) genderChanged,
    required TResult Function(_DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(_SelectPicture value) selectPicture,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NameChanged value)? nameChanged,
    TResult? Function(_GenderChanged value)? genderChanged,
    TResult? Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(_SelectPicture value)? selectPicture,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NameChanged value)? nameChanged,
    TResult Function(_GenderChanged value)? genderChanged,
    TResult Function(_DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(_SelectPicture value)? selectPicture,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements FillDataEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$FillDataState {
  DateOfBirth get dateOfBirth => throw _privateConstructorUsedError;
  bool get male => throw _privateConstructorUsedError;
  DisplayName get displayName => throw _privateConstructorUsedError;
  PlatformFile? get picture => throw _privateConstructorUsedError;
  bool get showValidatorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FillDataStateCopyWith<FillDataState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FillDataStateCopyWith<$Res> {
  factory $FillDataStateCopyWith(
          FillDataState value, $Res Function(FillDataState) then) =
      _$FillDataStateCopyWithImpl<$Res, FillDataState>;
  @useResult
  $Res call(
      {DateOfBirth dateOfBirth,
      bool male,
      DisplayName displayName,
      PlatformFile? picture,
      bool showValidatorMessages,
      bool isSubmitting,
      bool success});
}

/// @nodoc
class _$FillDataStateCopyWithImpl<$Res, $Val extends FillDataState>
    implements $FillDataStateCopyWith<$Res> {
  _$FillDataStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfBirth = null,
    Object? male = null,
    Object? displayName = null,
    Object? picture = freezed,
    Object? showValidatorMessages = null,
    Object? isSubmitting = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth,
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      showValidatorMessages: null == showValidatorMessages
          ? _value.showValidatorMessages
          : showValidatorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FillDataStateCopyWith<$Res>
    implements $FillDataStateCopyWith<$Res> {
  factory _$$_FillDataStateCopyWith(
          _$_FillDataState value, $Res Function(_$_FillDataState) then) =
      __$$_FillDataStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateOfBirth dateOfBirth,
      bool male,
      DisplayName displayName,
      PlatformFile? picture,
      bool showValidatorMessages,
      bool isSubmitting,
      bool success});
}

/// @nodoc
class __$$_FillDataStateCopyWithImpl<$Res>
    extends _$FillDataStateCopyWithImpl<$Res, _$_FillDataState>
    implements _$$_FillDataStateCopyWith<$Res> {
  __$$_FillDataStateCopyWithImpl(
      _$_FillDataState _value, $Res Function(_$_FillDataState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateOfBirth = null,
    Object? male = null,
    Object? displayName = null,
    Object? picture = freezed,
    Object? showValidatorMessages = null,
    Object? isSubmitting = null,
    Object? success = null,
  }) {
    return _then(_$_FillDataState(
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth,
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as PlatformFile?,
      showValidatorMessages: null == showValidatorMessages
          ? _value.showValidatorMessages
          : showValidatorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_FillDataState extends _FillDataState {
  _$_FillDataState(
      {required this.dateOfBirth,
      required this.male,
      required this.displayName,
      this.picture,
      required this.showValidatorMessages,
      required this.isSubmitting,
      required this.success})
      : super._();

  @override
  final DateOfBirth dateOfBirth;
  @override
  final bool male;
  @override
  final DisplayName displayName;
  @override
  final PlatformFile? picture;
  @override
  final bool showValidatorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool success;

  @override
  String toString() {
    return 'FillDataState(dateOfBirth: $dateOfBirth, male: $male, displayName: $displayName, picture: $picture, showValidatorMessages: $showValidatorMessages, isSubmitting: $isSubmitting, success: $success)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FillDataState &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.male, male) || other.male == male) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.showValidatorMessages, showValidatorMessages) ||
                other.showValidatorMessages == showValidatorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateOfBirth, male, displayName,
      picture, showValidatorMessages, isSubmitting, success);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FillDataStateCopyWith<_$_FillDataState> get copyWith =>
      __$$_FillDataStateCopyWithImpl<_$_FillDataState>(this, _$identity);
}

abstract class _FillDataState extends FillDataState {
  factory _FillDataState(
      {required final DateOfBirth dateOfBirth,
      required final bool male,
      required final DisplayName displayName,
      final PlatformFile? picture,
      required final bool showValidatorMessages,
      required final bool isSubmitting,
      required final bool success}) = _$_FillDataState;
  _FillDataState._() : super._();

  @override
  DateOfBirth get dateOfBirth;
  @override
  bool get male;
  @override
  DisplayName get displayName;
  @override
  PlatformFile? get picture;
  @override
  bool get showValidatorMessages;
  @override
  bool get isSubmitting;
  @override
  bool get success;
  @override
  @JsonKey(ignore: true)
  _$$_FillDataStateCopyWith<_$_FillDataState> get copyWith =>
      throw _privateConstructorUsedError;
}
