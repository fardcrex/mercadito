import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/app/stores/store_presentation_model.dart';
import 'package:mi_mercadito_app/app/stores/widget/store_card.dart';
import 'package:mi_mercadito_app/app/stores/store_detail_page.dart';

class DataMarketsView extends StatelessWidget {
  const DataMarketsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (final store in stores)
          GestureDetector(
            child: StoreCard(model: store),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => StoreDetailView(model: store),
                ),
              );
            },
          ),
      ],
    );
  }
}

final stores = [
  StoreViewModel(
    name: 'Puesto Don Tito',
    distanceText: '1.2 km',
    id: '1',
    imageUrl: 'https://picsum.photos/250?image=9',
    numberOfStallsText: '20 puestos',
    openingHours: '8:00 AM - 20:00 PM',
  ),
  StoreViewModel(
    name: 'Puesto Anita',
    distanceText: '1.2 km',
    id: '2',
    imageUrl: 'https://picsum.photos/250?image=10',
    numberOfStallsText: '20 puestos',
    openingHours: '8:00 AM - 20:00 PM',
  ),
  StoreViewModel(
    name: 'Puesto Tía Meche',
    distanceText: '1.2 km',
    id: '2',
    imageUrl: 'https://picsum.photos/250?image=10',
    numberOfStallsText: '20 puestos',
    openingHours: '8:00 AM - 20:00 PM',
  ),
  StoreViewModel(
    name: 'La Bodega',
    distanceText: '1.2 km',
    id: '2',
    imageUrl: 'https://picsum.photos/250?image=10',
    numberOfStallsText: '20 puestos',
    openingHours: '8:00 AM - 20:00 PM',
  ),
];
