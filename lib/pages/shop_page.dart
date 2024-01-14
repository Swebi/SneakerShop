import 'package:flutter/material.dart';
import 'package:sneaker/components/shoe_tile.dart';
import 'package:sneaker/models/shoeShop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // search bar
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(10)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(Icons.search, color: Colors.grey),
            ],
          ),
        ),

        //message

        // const Padding(
        //   padding: EdgeInsets.symmetric(vertical: 25.0),
        //   child: Text(
        //     "Everyone flies. Some fly longer than others",
        //     style: TextStyle(color: Color.fromARGB(255, 117, 117, 117)),
        //   ),
        // ),

        // hot picks
        const Padding(
          padding: EdgeInsets.only(
            left: 25.0,
            right: 25.0,
            top: 25.0,
            bottom: 15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Hot Picks",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: shoeShop.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return ShoeTile(
                shoe: shoeShop[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 40,
        )
      ],
    );
  }
}
