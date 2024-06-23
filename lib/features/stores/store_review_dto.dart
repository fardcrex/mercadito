import 'package:freezed_annotation/freezed_annotation.dart';
part 'store_review_dto.freezed.dart';
part 'store_review_dto.g.dart';

@freezed
class StoreReviewDto with _$StoreReviewDto {
  const factory StoreReviewDto({
    required String id,
    required String date,
    required String name,
    required String review,
    required double averageStars,
  }) = _StoreReviewDto;

  factory StoreReviewDto.fromJson(Map<String, dynamic> json) =>
      _$StoreReviewDtoFromJson(json);
}

@freezed
class ReviewCreateDto with _$ReviewCreateDto {
  const factory ReviewCreateDto({
    required String comments,
    required double productQualityStars,
    required double customerAttentionStars,
    required double waitingTimeStars,
    required double averageStars,
  }) = _ReviewCreateDto;

  factory ReviewCreateDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewCreateDtoFromJson(json);
}
