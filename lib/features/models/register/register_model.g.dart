// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegisterRequestImpl _$$RegisterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterRequestImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$RegisterRequestImplToJson(
        _$RegisterRequestImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$RegisterResponseImpl _$$RegisterResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegisterResponseImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$RegisterResponseImplToJson(
        _$RegisterResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };
