// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: const IDSerializer().fromJson(json['id'] as String),
      username:
          const ValueStringSerializer().fromJson(json['username'] as String),
      email: const EmailSerializer().fromJson(json['email'] as String),
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': const IDSerializer().toJson(instance.id),
      'username': const ValueStringSerializer().toJson(instance.username),
      'email': const EmailSerializer().toJson(instance.email),
    };
