// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'cart_screens.dart';
import 'catalog_products.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: Text('MOBIGARAGE\n Spareparts'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CartScreens(),
                ),
              );
            },
          ),
        ],
        // elevation: 0.0,
      ),
      body: SafeArea(
          child: Column(
        children: [
          const CatalogProducts(),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => CartScreens(),
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
