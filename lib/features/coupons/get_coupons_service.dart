import 'package:mi_mercadito_app/features/coupons/coupons_dto.dart';

class GetCouponsService {
  GetCouponsService();

  final userId = '1';

  Future<List<CouponDto>> getCoupons() async {
    await Future.delayed(const Duration(seconds: 2));
    return [
      CouponDto(
          discount: 0.5,
          id: '1',
          code: 'NAVIDAD2021',
          name: 'Cupón Navideño',
          urlQr:
              'https://borealtech.com/wp-content/uploads/2018/10/codigo-qr-1024x1024-1.jpg'),
      CouponDto(
          discount: 0.25,
          id: '2',
          code: 'REGALO2021',
          name: 'Cupón de regalo',
          urlQr:
              'https://borealtech.com/wp-content/uploads/2018/10/codigo-qr-1024x1024-1.jpg'),
      CouponDto(
          discount: 0.15,
          id: '1',
          code: 'PARTICIPACION2021',
          name: 'Cupón por participación',
          urlQr:
              'https://borealtech.com/wp-content/uploads/2018/10/codigo-qr-1024x1024-1.jpg'),
      CouponDto(
          discount: 0.05,
          id: '1',
          code: 'RESEÑAS2021',
          name: 'Cupón por reseñas',
          urlQr:
              'https://borealtech.com/wp-content/uploads/2018/10/codigo-qr-1024x1024-1.jpg'),
    ]..shuffle();
  }
}
