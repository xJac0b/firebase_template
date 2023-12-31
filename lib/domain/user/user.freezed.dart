// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  UniqueId get id => throw _privateConstructorUsedError;
  EmailAddress get email => throw _privateConstructorUsedError;
  bool get filled => throw _privateConstructorUsedError;
  DisplayName? get displayName => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  bool? get male => throw _privateConstructorUsedError;
  DateOfBirth? get dateOfBirth => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {UniqueId id,
      EmailAddress email,
      bool filled,
      DisplayName? displayName,
      String? photoUrl,
      bool? male,
      DateOfBirth? dateOfBirth});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? filled = null,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
    Object? male = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      filled: null == filled
          ? _value.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      male: freezed == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      EmailAddress email,
      bool filled,
      DisplayName? displayName,
      String? photoUrl,
      bool? male,
      DateOfBirth? dateOfBirth});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? email = null,
    Object? filled = null,
    Object? displayName = freezed,
    Object? photoUrl = freezed,
    Object? male = freezed,
    Object? dateOfBirth = freezed,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      filled: null == filled
          ? _value.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool,
      displayName: freezed == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName?,
      photoUrl: freezed == photoUrl
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      male: freezed == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as bool?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth?,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.email,
      required this.filled,
      this.displayName,
      this.photoUrl,
      this.male,
      this.dateOfBirth});

  @override
  final UniqueId id;
  @override
  final EmailAddress email;
  @override
  final bool filled;
  @override
  final DisplayName? displayName;
  @override
  final String? photoUrl;
  @override
  final bool? male;
  @override
  final DateOfBirth? dateOfBirth;

  @override
  String toString() {
    return 'User(id: $id, email: $email, filled: $filled, displayName: $displayName, photoUrl: $photoUrl, male: $male, dateOfBirth: $dateOfBirth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.filled, filled) || other.filled == filled) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.male, male) || other.male == male) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, email, filled, displayName, photoUrl, male, dateOfBirth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final UniqueId id,
      required final EmailAddress email,
      required final bool filled,
      final DisplayName? displayName,
      final String? photoUrl,
      final bool? male,
      final DateOfBirth? dateOfBirth}) = _$_User;

  @override
  UniqueId get id;
  @override
  EmailAddress get email;
  @override
  bool get filled;
  @override
  DisplayName? get displayName;
  @override
  String? get photoUrl;
  @override
  bool? get male;
  @override
  DateOfBirth? get dateOfBirth;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
