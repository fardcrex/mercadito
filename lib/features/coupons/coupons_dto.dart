import 'package:freezed_annotation/freezed_annotation.dart';
part 'coupons_dto.freezed.dart';
part 'coupons_dto.g.dart';

@freezed
class CouponDto with _$CouponDto {
  const factory CouponDto({
    required String id,
    required String code,
    required String name,
    required double discount,
    required String urlQr,
  }) = _CouponDto;

  factory CouponDto.fromJson(Map<String, dynamic> json) =>
      _$CouponDtoFromJson(json);
}
