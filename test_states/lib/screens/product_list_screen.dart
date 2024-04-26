import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controllers/cart_controller.dart';
import 'package:shop/models/product.dart';
import 'package:shop/screens/cart_screen.dart';


class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Product> products = [
      Product("Product 1", 3000),
      Product("Product 2", 2000),
      Product("Product 3", 5000),
      Product("Product 4", 10000),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('\$${product.price.toString()}'),
            trailing: IconButton(
              icon: const Icon(Icons.add_shopping_cart),
              onPressed: () {
                Get.find<CartController>().addToCart(product);
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(const CartScreen());
        },
        label: Obx(() => Text('Cart (${Get.find<CartController>().cartItems.length})')),
      ),
    );
  }
}
