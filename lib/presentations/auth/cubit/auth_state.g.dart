// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthStateImpl _$$AuthStateImplFromJson(Map<String, dynamic> json) =>
    _$AuthStateImpl(
      user: json['user'] == null
          ? null
          : LocalUser.fromJson(json['user'] as Map<String, dynamic>),
      isSellerMode: json['isSellerMode'] as bool? ?? false,
    );

Map<String, dynamic> _$$AuthStateImplToJson(_$AuthStateImpl instance) =>
    <String, dynamic>{
      'user': instance.user,
      'isSellerMode': instance.isSellerMode,
    };
