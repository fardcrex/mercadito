import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mi_mercadito_app/features/stores/get_reviews_services.dart';
import 'package:mi_mercadito_app/features/stores/store_review_dto.dart';

part 'store_detail_event.dart';
part 'store_detail_state.dart';
part 'store_detail_bloc.freezed.dart';

class StoreDetailBloc extends Bloc<StoreDetailEvent, StoreDetailState> {
  final ReviewsServices _getReviewsServices = ReviewsServices();
  StoreDetailBloc() : super(_Initial()) {
    on<_Started>((event, emit) async {
      emit(_Initial());

      return _getReviewsServices.getReviewsByStoreId(event.id).then((reviews) {
        emit(StoreDetailState.success(reviews));
      });
    });
  }
}
