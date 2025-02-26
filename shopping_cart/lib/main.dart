import 'package:flutter/material.dart';
import 'package:shopping_cart/animated_shopping_cart_button.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedShoppingCartButton(),
    );
  }
}
