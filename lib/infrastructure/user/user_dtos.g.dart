// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      filled: json['filled'] as bool,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      male: json['male'] as bool?,
      displayName: json['displayName'] as String?,
      photoUrl: json['photoUrl'] as String?,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'filled': instance.filled,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'male': instance.male,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'email': instance.email,
    };
