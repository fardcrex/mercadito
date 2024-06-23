import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mi_mercadito_app/features/coupons/coupons_dto.dart';
import 'package:mi_mercadito_app/features/coupons/get_coupons_service.dart';

part 'coupons_list_event.dart';
part 'coupons_list_state.dart';
part 'coupons_list_bloc.freezed.dart';

class CouponsListBloc extends Bloc<CouponsListEvent, CouponsListState> {
  final _getCouponsService = GetCouponsService();
  CouponsListBloc() : super(_Initial()) {
    on<_Started>((event, emit) async {
      emit(_Initial());

      final coupons = await _getCouponsService.getCoupons();

      emit(CouponsListState.success(coupons));
    });
    on<_Refresh>((event, emit) async {
      final coupons = await _getCouponsService.getCoupons();

      emit(CouponsListState.success(coupons));
    });
  }
}
