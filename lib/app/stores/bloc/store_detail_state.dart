part of 'store_detail_bloc.dart';

@freezed
class StoreDetailState with _$StoreDetailState {
  const factory StoreDetailState.initial() = _Initial;
  const factory StoreDetailState.success(List<StoreReviewDto> reviewModel) =
      _Success;
}
