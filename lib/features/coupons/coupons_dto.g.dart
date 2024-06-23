// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupons_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponDtoImpl _$$CouponDtoImplFromJson(Map<String, dynamic> json) =>
    _$CouponDtoImpl(
      id: json['id'] as String,
      code: json['code'] as String,
      name: json['name'] as String,
      discount: (json['discount'] as num).toDouble(),
      urlQr: json['urlQr'] as String,
    );

Map<String, dynamic> _$$CouponDtoImplToJson(_$CouponDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'name': instance.name,
      'discount': instance.discount,
      'urlQr': instance.urlQr,
    };
