// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CounterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingStarted,
    required TResult Function() incrementPressed,
    required TResult Function() decrementPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingStarted,
    TResult? Function()? incrementPressed,
    TResult? Function()? decrementPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingStarted,
    TResult Function()? incrementPressed,
    TResult Function()? decrementPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingStarted value) loadingStarted,
    required TResult Function(_IncrementPressed value) incrementPressed,
    required TResult Function(_DecrementPressed value) decrementPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingStarted value)? loadingStarted,
    TResult? Function(_IncrementPressed value)? incrementPressed,
    TResult? Function(_DecrementPressed value)? decrementPressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingStarted value)? loadingStarted,
    TResult Function(_IncrementPressed value)? incrementPressed,
    TResult Function(_DecrementPressed value)? decrementPressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterEventCopyWith<$Res> {
  factory $CounterEventCopyWith(
          CounterEvent value, $Res Function(CounterEvent) then) =
      _$CounterEventCopyWithImpl<$Res, CounterEvent>;
}

/// @nodoc
class _$CounterEventCopyWithImpl<$Res, $Val extends CounterEvent>
    implements $CounterEventCopyWith<$Res> {
  _$CounterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingStartedCopyWith<$Res> {
  factory _$$_LoadingStartedCopyWith(
          _$_LoadingStarted value, $Res Function(_$_LoadingStarted) then) =
      __$$_LoadingStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingStartedCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$_LoadingStarted>
    implements _$$_LoadingStartedCopyWith<$Res> {
  __$$_LoadingStartedCopyWithImpl(
      _$_LoadingStarted _value, $Res Function(_$_LoadingStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LoadingStarted implements _LoadingStarted {
  const _$_LoadingStarted();

  @override
  String toString() {
    return 'CounterEvent.loadingStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadingStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingStarted,
    required TResult Function() incrementPressed,
    required TResult Function() decrementPressed,
  }) {
    return loadingStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingStarted,
    TResult? Function()? incrementPressed,
    TResult? Function()? decrementPressed,
  }) {
    return loadingStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingStarted,
    TResult Function()? incrementPressed,
    TResult Function()? decrementPressed,
    required TResult orElse(),
  }) {
    if (loadingStarted != null) {
      return loadingStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingStarted value) loadingStarted,
    required TResult Function(_IncrementPressed value) incrementPressed,
    required TResult Function(_DecrementPressed value) decrementPressed,
  }) {
    return loadingStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingStarted value)? loadingStarted,
    TResult? Function(_IncrementPressed value)? incrementPressed,
    TResult? Function(_DecrementPressed value)? decrementPressed,
  }) {
    return loadingStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingStarted value)? loadingStarted,
    TResult Function(_IncrementPressed value)? incrementPressed,
    TResult Function(_DecrementPressed value)? decrementPressed,
    required TResult orElse(),
  }) {
    if (loadingStarted != null) {
      return loadingStarted(this);
    }
    return orElse();
  }
}

abstract class _LoadingStarted implements CounterEvent {
  const factory _LoadingStarted() = _$_LoadingStarted;
}

/// @nodoc
abstract class _$$_IncrementPressedCopyWith<$Res> {
  factory _$$_IncrementPressedCopyWith(
          _$_IncrementPressed value, $Res Function(_$_IncrementPressed) then) =
      __$$_IncrementPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncrementPressedCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$_IncrementPressed>
    implements _$$_IncrementPressedCopyWith<$Res> {
  __$$_IncrementPressedCopyWithImpl(
      _$_IncrementPressed _value, $Res Function(_$_IncrementPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IncrementPressed implements _IncrementPressed {
  const _$_IncrementPressed();

  @override
  String toString() {
    return 'CounterEvent.incrementPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IncrementPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingStarted,
    required TResult Function() incrementPressed,
    required TResult Function() decrementPressed,
  }) {
    return incrementPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingStarted,
    TResult? Function()? incrementPressed,
    TResult? Function()? decrementPressed,
  }) {
    return incrementPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingStarted,
    TResult Function()? incrementPressed,
    TResult Function()? decrementPressed,
    required TResult orElse(),
  }) {
    if (incrementPressed != null) {
      return incrementPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingStarted value) loadingStarted,
    required TResult Function(_IncrementPressed value) incrementPressed,
    required TResult Function(_DecrementPressed value) decrementPressed,
  }) {
    return incrementPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingStarted value)? loadingStarted,
    TResult? Function(_IncrementPressed value)? incrementPressed,
    TResult? Function(_DecrementPressed value)? decrementPressed,
  }) {
    return incrementPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingStarted value)? loadingStarted,
    TResult Function(_IncrementPressed value)? incrementPressed,
    TResult Function(_DecrementPressed value)? decrementPressed,
    required TResult orElse(),
  }) {
    if (incrementPressed != null) {
      return incrementPressed(this);
    }
    return orElse();
  }
}

abstract class _IncrementPressed implements CounterEvent {
  const factory _IncrementPressed() = _$_IncrementPressed;
}

/// @nodoc
abstract class _$$_DecrementPressedCopyWith<$Res> {
  factory _$$_DecrementPressedCopyWith(
          _$_DecrementPressed value, $Res Function(_$_DecrementPressed) then) =
      __$$_DecrementPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DecrementPressedCopyWithImpl<$Res>
    extends _$CounterEventCopyWithImpl<$Res, _$_DecrementPressed>
    implements _$$_DecrementPressedCopyWith<$Res> {
  __$$_DecrementPressedCopyWithImpl(
      _$_DecrementPressed _value, $Res Function(_$_DecrementPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DecrementPressed implements _DecrementPressed {
  const _$_DecrementPressed();

  @override
  String toString() {
    return 'CounterEvent.decrementPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_DecrementPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingStarted,
    required TResult Function() incrementPressed,
    required TResult Function() decrementPressed,
  }) {
    return decrementPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingStarted,
    TResult? Function()? incrementPressed,
    TResult? Function()? decrementPressed,
  }) {
    return decrementPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingStarted,
    TResult Function()? incrementPressed,
    TResult Function()? decrementPressed,
    required TResult orElse(),
  }) {
    if (decrementPressed != null) {
      return decrementPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingStarted value) loadingStarted,
    required TResult Function(_IncrementPressed value) incrementPressed,
    required TResult Function(_DecrementPressed value) decrementPressed,
  }) {
    return decrementPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingStarted value)? loadingStarted,
    TResult? Function(_IncrementPressed value)? incrementPressed,
    TResult? Function(_DecrementPressed value)? decrementPressed,
  }) {
    return decrementPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingStarted value)? loadingStarted,
    TResult Function(_IncrementPressed value)? incrementPressed,
    TResult Function(_DecrementPressed value)? decrementPressed,
    required TResult orElse(),
  }) {
    if (decrementPressed != null) {
      return decrementPressed(this);
    }
    return orElse();
  }
}

abstract class _DecrementPressed implements CounterEvent {
  const factory _DecrementPressed() = _$_DecrementPressed;
}

/// @nodoc
mixin _$CounterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int value) loadSuccess,
    required TResult Function(DatabaseFailure failure) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int value)? loadSuccess,
    TResult? Function(DatabaseFailure failure)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int value)? loadSuccess,
    TResult Function(DatabaseFailure failure)? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadError value) loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadError value)? loadError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CounterStateCopyWith<$Res> {
  factory $CounterStateCopyWith(
          CounterState value, $Res Function(CounterState) then) =
      _$CounterStateCopyWithImpl<$Res, CounterState>;
}

/// @nodoc
class _$CounterStateCopyWithImpl<$Res, $Val extends CounterState>
    implements $CounterStateCopyWith<$Res> {
  _$CounterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'CounterState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int value) loadSuccess,
    required TResult Function(DatabaseFailure failure) loadError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int value)? loadSuccess,
    TResult? Function(DatabaseFailure failure)? loadError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int value)? loadSuccess,
    TResult Function(DatabaseFailure failure)? loadError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadError value) loadError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadError value)? loadError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements CounterState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$_LoadSuccess>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$_LoadSuccess(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'CounterState.loadSuccess(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int value) loadSuccess,
    required TResult Function(DatabaseFailure failure) loadError,
  }) {
    return loadSuccess(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int value)? loadSuccess,
    TResult? Function(DatabaseFailure failure)? loadError,
  }) {
    return loadSuccess?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int value)? loadSuccess,
    TResult Function(DatabaseFailure failure)? loadError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadError value) loadError,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadError value)? loadError,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements CounterState {
  const factory _LoadSuccess(final int value) = _$_LoadSuccess;

  int get value;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadErrorCopyWith<$Res> {
  factory _$$_LoadErrorCopyWith(
          _$_LoadError value, $Res Function(_$_LoadError) then) =
      __$$_LoadErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({DatabaseFailure failure});

  $DatabaseFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_LoadErrorCopyWithImpl<$Res>
    extends _$CounterStateCopyWithImpl<$Res, _$_LoadError>
    implements _$$_LoadErrorCopyWith<$Res> {
  __$$_LoadErrorCopyWithImpl(
      _$_LoadError _value, $Res Function(_$_LoadError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_LoadError(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as DatabaseFailure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DatabaseFailureCopyWith<$Res> get failure {
    return $DatabaseFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_LoadError implements _LoadError {
  const _$_LoadError(this.failure);

  @override
  final DatabaseFailure failure;

  @override
  String toString() {
    return 'CounterState.loadError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadErrorCopyWith<_$_LoadError> get copyWith =>
      __$$_LoadErrorCopyWithImpl<_$_LoadError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(int value) loadSuccess,
    required TResult Function(DatabaseFailure failure) loadError,
  }) {
    return loadError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(int value)? loadSuccess,
    TResult? Function(DatabaseFailure failure)? loadError,
  }) {
    return loadError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(int value)? loadSuccess,
    TResult Function(DatabaseFailure failure)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_LoadError value) loadError,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_LoadSuccess value)? loadSuccess,
    TResult? Function(_LoadError value)? loadError,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_LoadError value)? loadError,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class _LoadError implements CounterState {
  const factory _LoadError(final DatabaseFailure failure) = _$_LoadError;

  DatabaseFailure get failure;
  @JsonKey(ignore: true)
  _$$_LoadErrorCopyWith<_$_LoadError> get copyWith =>
      throw _privateConstructorUsedError;
}
