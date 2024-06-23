import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/app/stores/store_presentation_model.dart';
import 'package:mi_mercadito_app/app/stores/bloc/store_detail_bloc.dart';
import 'package:mi_mercadito_app/app/stores/review_model.dart';
import 'package:mi_mercadito_app/app/stores/widget/image_store.dart';
import 'package:mi_mercadito_app/app/stores/widget/title_store.dart';
import 'package:mi_mercadito_app/app/stores/widget/review_card.dart';
import 'package:mi_mercadito_app/core/theme/extensions/theme_of.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreDetailView extends StatelessWidget {
  final StoreViewModel model;

  const StoreDetailView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themeOf(context).backgroundColor2,
      appBar: AppBar(
        title: Text('Detalles'),
        elevation: 1,
        actions: [
          //Hacer reseña button
          ElevatedButton(
            onPressed: () {},
            child: Text('Hacer reseña'),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          TitleStore(
            storeName: model.name,
            storeNumber: model.distanceText,
          ),
          SizedBox(height: 16),
          ImageStore(imageUrl: model.imageUrl),
          ReviewText(storeName: 'Calificación:'),
          StartsRow(),
          ReviewText(storeName: 'Reseñas:'),
          BlocProvider(
            create: (context) =>
                StoreDetailBloc()..add(StoreDetailEvent.started(model.id)),
            child: BlocBuilder<StoreDetailBloc, StoreDetailState>(
              builder: (context, state) {
                return state.when(
                  initial: () => Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (reviews) => Column(
                    children: reviews
                        .map((review) => ReviewCard(
                              review: ReviewModel(
                                name: review.name,
                                rating: 2,
                                date: review.date,
                                review: review.review,
                              ),
                            ))
                        .toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
