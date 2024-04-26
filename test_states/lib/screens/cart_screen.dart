import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/controllers/cart_controller.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    final CartController cartController = Get.find<CartController>();

    var scaffold = Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        actions: [
          IconButton(
            onPressed: () {
              cartController.clearCart();
            },
            icon: const Icon(Icons.delete)
          ),
        ],
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: cartController.cartItems.length,
          itemBuilder: (context, index) {
            final product = cartController.cartItems[index];
            return ListTile(
              title: Text(product.name),
              subtitle: Text('\$${product.price}'),
              trailing: IconButton(
                icon: const Icon(Icons.remove_shopping_cart),
                onPressed: () {
                  cartController.removeFromCart(product);
                },
              ),
            );
          },
        )
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Obx(() => Text(
            'Total carrito: \$${cartController.totalPrice}',
            style: const TextStyle(fontSize: 18.0),
          )),
        ),
      ),
    );
    return scaffold;
  }
}
