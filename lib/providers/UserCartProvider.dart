import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sneaker/models/shoe.dart';

class userCartNotifier extends StateNotifier<List<Shoe>> {
  userCartNotifier(List<Shoe> state) : super(state);

  void add(Shoe shoe) => state = [...state, shoe];

  void remove(Shoe shoe) {
    List<Shoe> temp = [...state];

    temp.remove(shoe);

    state = temp;
  }
}

final userCartProvider = StateNotifierProvider<userCartNotifier, List<Shoe>>(
  (ref) => userCartNotifier([]),
);
