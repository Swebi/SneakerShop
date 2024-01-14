import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sneaker/components/cart_tile.dart';
import 'package:sneaker/providers/UserCartProvider.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userCart = ref.watch(userCartProvider);

    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: userCart.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return CartTile(
                shoe: userCart[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
