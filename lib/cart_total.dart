import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobi_garage/cart_controller.dart';

class CartTotal extends StatelessWidget {
  final CartController controller = Get.find();
  CartTotal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: 200,
        height: 12.0,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Total:   Shs${controller.total}',
                style: const TextStyle(
                  color: Color.fromARGB(255, 9, 111, 194),
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
