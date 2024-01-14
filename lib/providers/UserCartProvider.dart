import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sneaker/models/shoe.dart';

final userCartProvider = StateProvider<List<Shoe>>(
  (ref) => [],
);
