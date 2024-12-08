// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalUserImpl _$$LocalUserImplFromJson(Map<String, dynamic> json) =>
    _$LocalUserImpl(
      userId: json['id'] as String,
      name: json['name'] as String,
      sellerStatus: (json['sellerStatus'] as num).toInt(),
      token: json['token'] as String,
      isSellerMode: json['isSellerMode'] as bool? ?? false,
    );

Map<String, dynamic> _$$LocalUserImplToJson(_$LocalUserImpl instance) =>
    <String, dynamic>{
      'id': instance.userId,
      'name': instance.name,
      'sellerStatus': instance.sellerStatus,
      'token': instance.token,
      'isSellerMode': instance.isSellerMode,
    };
