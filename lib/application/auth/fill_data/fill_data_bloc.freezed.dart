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
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(Saved value)? saved,
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
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res>
    extends _$FillDataEventCopyWithImpl<$Res, _$NameChanged>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChanged(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged({required this.name});

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
            other is _$NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements FillDataEvent {
  const factory NameChanged({required final String name}) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderChangedCopyWith<$Res> {
  factory _$$GenderChangedCopyWith(
          _$GenderChanged value, $Res Function(_$GenderChanged) then) =
      __$$GenderChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool male});
}

/// @nodoc
class __$$GenderChangedCopyWithImpl<$Res>
    extends _$FillDataEventCopyWithImpl<$Res, _$GenderChanged>
    implements _$$GenderChangedCopyWith<$Res> {
  __$$GenderChangedCopyWithImpl(
      _$GenderChanged _value, $Res Function(_$GenderChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? male = null,
  }) {
    return _then(_$GenderChanged(
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GenderChanged implements GenderChanged {
  const _$GenderChanged({required this.male});

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
            other is _$GenderChanged &&
            (identical(other.male, male) || other.male == male));
  }

  @override
  int get hashCode => Object.hash(runtimeType, male);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderChangedCopyWith<_$GenderChanged> get copyWith =>
      __$$GenderChangedCopyWithImpl<_$GenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(Saved value) saved,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class GenderChanged implements FillDataEvent {
  const factory GenderChanged({required final bool male}) = _$GenderChanged;

  bool get male;
  @JsonKey(ignore: true)
  _$$GenderChangedCopyWith<_$GenderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateOfBirthChangedCopyWith<$Res> {
  factory _$$DateOfBirthChangedCopyWith(_$DateOfBirthChanged value,
          $Res Function(_$DateOfBirthChanged) then) =
      __$$DateOfBirthChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateOfBirthChangedCopyWithImpl<$Res>
    extends _$FillDataEventCopyWithImpl<$Res, _$DateOfBirthChanged>
    implements _$$DateOfBirthChangedCopyWith<$Res> {
  __$$DateOfBirthChangedCopyWithImpl(
      _$DateOfBirthChanged _value, $Res Function(_$DateOfBirthChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateOfBirthChanged(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateOfBirthChanged implements DateOfBirthChanged {
  const _$DateOfBirthChanged({required this.date});

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
            other is _$DateOfBirthChanged &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateOfBirthChangedCopyWith<_$DateOfBirthChanged> get copyWith =>
      __$$DateOfBirthChangedCopyWithImpl<_$DateOfBirthChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(Saved value) saved,
  }) {
    return dateOfBirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return dateOfBirthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(this);
    }
    return orElse();
  }
}

abstract class DateOfBirthChanged implements FillDataEvent {
  const factory DateOfBirthChanged({required final DateTime date}) =
      _$DateOfBirthChanged;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DateOfBirthChangedCopyWith<_$DateOfBirthChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res>
    extends _$FillDataEventCopyWithImpl<$Res, _$Saved>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'FillDataEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
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
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements FillDataEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
mixin _$FillDataState {
  DateOfBirth get dateOfBirth => throw _privateConstructorUsedError;
  bool get male => throw _privateConstructorUsedError;
  DisplayName get displayName => throw _privateConstructorUsedError;
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
  final bool showValidatorMessages;
  @override
  final bool isSubmitting;
  @override
  final bool success;

  @override
  String toString() {
    return 'FillDataState(dateOfBirth: $dateOfBirth, male: $male, displayName: $displayName, showValidatorMessages: $showValidatorMessages, isSubmitting: $isSubmitting, success: $success)';
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
            (identical(other.showValidatorMessages, showValidatorMessages) ||
                other.showValidatorMessages == showValidatorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateOfBirth, male, displayName,
      showValidatorMessages, isSubmitting, success);

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
