// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_review_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StoreReviewDtoImpl _$$StoreReviewDtoImplFromJson(Map<String, dynamic> json) =>
    _$StoreReviewDtoImpl(
      id: json['id'] as String,
      date: json['date'] as String,
      name: json['name'] as String,
      review: json['review'] as String,
      averageStars: (json['averageStars'] as num).toDouble(),
    );

Map<String, dynamic> _$$StoreReviewDtoImplToJson(
        _$StoreReviewDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'name': instance.name,
      'review': instance.review,
      'averageStars': instance.averageStars,
    };

_$ReviewCreateDtoImpl _$$ReviewCreateDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewCreateDtoImpl(
      comments: json['comments'] as String,
      productQualityStars: (json['productQualityStars'] as num).toDouble(),
      customerAttentionStars:
          (json['customerAttentionStars'] as num).toDouble(),
      waitingTimeStars: (json['waitingTimeStars'] as num).toDouble(),
      averageStars: (json['averageStars'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReviewCreateDtoImplToJson(
        _$ReviewCreateDtoImpl instance) =>
    <String, dynamic>{
      'comments': instance.comments,
      'productQualityStars': instance.productQualityStars,
      'customerAttentionStars': instance.customerAttentionStars,
      'waitingTimeStars': instance.waitingTimeStars,
      'averageStars': instance.averageStars,
    };
