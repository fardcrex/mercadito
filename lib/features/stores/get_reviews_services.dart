import 'package:mi_mercadito_app/features/stores/store_review_dto.dart';
import 'package:dio/dio.dart';

class ReviewsServices {
  final dio = Dio();

  Future<List<StoreReviewDto>> getReviewsByStoreId(String id) async {
    await Future.delayed(const Duration(seconds: 1));
    return [
      StoreReviewDto(
        id: '1',
        date: '12/12/2021',
        name: 'Juan Perez',
        review: 'Excelente atención y productos de calidad',
        averageStars: 5,
      ),
      StoreReviewDto(
        id: '2',
        date: '12/12/2021',
        name: 'Jane Doe',
        review: 'Great store!',
        averageStars: 5,
      ),
    ];
  }

  Future<bool> createReview(ReviewCreateDto review) async {
    try {
      final response = await dio.post(
        'https://tuapi.com/reviews', // Reemplaza con tu URL
        data: review.toJson(),
      );
      return response.statusCode == 200;
    } catch (e) {
      print('Error al realizar la petición: $e');
      return false;
    }
  }
}
