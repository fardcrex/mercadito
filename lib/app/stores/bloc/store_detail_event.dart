part of 'store_detail_bloc.dart';

@freezed
class StoreDetailEvent with _$StoreDetailEvent {
  const factory StoreDetailEvent.started(String id) = _Started;
}
