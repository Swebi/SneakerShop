import 'package:sneaker/models/shoe.dart';

class Cart {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Max 90',
      price: '250',
      imagePath: 'lib/images/air-max-90.png',
      description: 'description',
    ),
    Shoe(
      name: 'Air Max 1',
      price: '180',
      imagePath: 'lib/images/air-max-1-86.png',
      description: 'description',
    ),
    Shoe(
      name: 'Air Max SC',
      price: '190',
      imagePath: 'lib/images/air-max-sc.png',
      description: 'description',
    ),
    Shoe(
      name: 'Dunk Low Se',
      price: '200',
      imagePath: 'lib/images/dunk-low-se.png',
      description: 'description',
    ),
  ];

  // list of items in user cart

  List<Shoe> userCart = [];

  // get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart

  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // remove item from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
