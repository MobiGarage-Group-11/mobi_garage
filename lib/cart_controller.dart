// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobi_garage/Spare_parts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CartController extends GetxController {
  //Add a dict to store the products in the cart.
  var _products = {}.obs;

  void addProduct(Product product) {
    if (_products.containsKey(product)) {
      _products[product] += 1;
    } else {
      _products[product] = 1;
    }
    Fluttertoast.showToast(
        msg: "${product.name} added to cart",
        backgroundColor: Colors.blue,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0);
    // Get.snackbar(
    //    'Product Added', 'You have added the ${product.name} to the cart',
    //   snackPosition: SnackPosition.BOTTOM, duration: Duration(seconds: 2));
  }

  void removeProduct(Product product) {
    if (_products.containsKey(product) && _products[product] == 1) {
      _products.removeWhere((key, value) => key == product);
    } else {
      _products[product] -= 1;
    }
    Fluttertoast.showToast(
        msg: "${product.name} removed from cart",
        backgroundColor: Colors.blue,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        fontSize: 16.0);
  }

  get products => _products;

  get productSubtotal => _products.entries
      .map((product) => product.key.price * product.value)
      .toList();

  get total => _products.entries
      .map((product) => product.key.price * product.value)
      .toList()
      .reduce((value, element) => value + element)
      .toStringAsFixed(2);
}
