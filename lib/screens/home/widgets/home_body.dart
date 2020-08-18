import 'package:flutter/material.dart';
import 'package:nike_store_app/models/shoe.dart';
import 'package:nike_store_app/screens/home/widgets/shoe_item.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
      childAspectRatio: 3 / 4,
      crossAxisCount: 2,
      children: [
        for (var shoe in shoesList) ShoeItem(shoe: shoe),
      ],
    ));
  }
}
