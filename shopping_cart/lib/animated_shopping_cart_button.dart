import 'package:flutter/material.dart';

class AnimatedShoppingCartButton extends StatefulWidget {
  const AnimatedShoppingCartButton({super.key});

  @override
  State<AnimatedShoppingCartButton> createState() =>
      _AnimatedShoppingCartButtonState();
}

class _AnimatedShoppingCartButtonState
    extends State<AnimatedShoppingCartButton> {
  bool isExpanded = false;

  static const double expandedWidth = 200.0;
  static const double collapsedWidth = 80.0;
  static const double height = 60.0;
  static const Duration animationDuration = Duration(milliseconds: 1000);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shopping Cart Button')),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            duration: animationDuration,
            width: isExpanded ? expandedWidth : collapsedWidth,
            height: height,
            decoration: BoxDecoration(
              color: isExpanded ? Colors.blue : Colors.green,
              borderRadius: BorderRadius.circular(isExpanded ? 30 : 10.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  isExpanded ? Icons.check : Icons.shopping_cart,
                  color: Colors.white,
                ),
                if (isExpanded)
                  const SizedBox(width: 8), // Add spacing between icon and text
                if (isExpanded)
                  const Expanded(
                    child: Text(
                      'Added to Cart!',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
