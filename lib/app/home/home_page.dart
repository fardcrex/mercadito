import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mi_mercadito_app/app/coupons/coupons_list/bloc/coupons_list_bloc.dart';
import 'package:mi_mercadito_app/app/coupons/coupons_list/views/data_coupons_view.dart';
import 'package:mi_mercadito_app/app/home/widget/botton_navigation.dart';
import 'package:mi_mercadito_app/app/stores/bloc/store_detail_bloc.dart';
import 'package:mi_mercadito_app/app/stores/views/data_store_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool firstTabSelect = true;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreDetailBloc(),
      child: BlocProvider(
        create: (context) =>
            CouponsListBloc()..add(const CouponsListEvent.started()),
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Mi Mercadito'),
          ),
          backgroundColor: Colors.white,
          body: firstTabSelect
              ? const DataMarketsView()
              : const DataCouponsView(),
          bottomNavigationBar: BottomNavitagionCustom(
            firstTabSelect: firstTabSelect,
            onChange: () {
              setState(() {
                firstTabSelect = !firstTabSelect;
              });
            },
          ),
        ),
      ),
    );
  }
}
