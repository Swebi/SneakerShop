import 'package:flutter/material.dart';
import 'package:sneaker/models/shoe.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sneaker/providers/UserCartProvider.dart';

class CartTile extends ConsumerWidget {
  Shoe shoe;
  CartTile({super.key, required this.shoe});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      leading: Image.asset(shoe.imagePath),
      title: Text(shoe.name),
      subtitle: Text(shoe.price),
      trailing: IconButton(
          onPressed: () => ref.watch(userCartProvider).remove(shoe),
          icon: const Icon(Icons.delete)),
    );
    ;
  }
}
