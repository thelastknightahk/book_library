// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateImpl _$$AuthStateImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateImpl(
      passwordVisible: json['passwordVisible'] as bool? ?? false,
      currentUserData: json['currentUserData'] == null
          ? null
          : User.fromJson(json['currentUserData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthStateImplToJson(_$AuthStateImpl instance) =>
    <String, dynamic>{
      'passwordVisible': instance.passwordVisible,
      'currentUserData': instance.currentUserData,
    };
