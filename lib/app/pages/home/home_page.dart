import 'package:delivery_app/app/core/ui/helpers/loader.dart';
import 'package:delivery_app/app/core/ui/helpers/messages.dart';
import 'package:delivery_app/app/core/widgets/delivery_app_bar.dart';
import 'package:delivery_app/app/models/product_model.dart';
import 'package:delivery_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // showLoader();
          // await Future.delayed(Duration(seconds: 2));
          showError('Erro ao criar qualquer coisa');
          await Future.delayed(Duration(seconds: 2));
          showInfo('Info ao criar qualquer coisa');
          await Future.delayed(Duration(seconds: 2));
          showSuccess('Sucesso ao criar qualquer coisa');
        },
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  product: ProductModel(
                    id: 0,
                    nome: 'Lanche X',
                    description:
                        'Lanche acompanha pão, hambúguer, mussarela, alface, tomate e maionese',
                    price: 15.0,
                    image:
                        'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800',
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
