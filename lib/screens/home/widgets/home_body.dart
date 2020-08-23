import 'package:flutter/material.dart';
import 'package:nike_store_app/models/shoe.dart';
import 'package:nike_store_app/screens/home/widgets/shoe_item.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TweenAnimationBuilder(
      duration: Duration(milliseconds: 2000),
      tween: Tween<double>(begin: 0, end: 1),
      builder: (BuildContext context, double val, Widget child) {
        return Opacity(
          opacity: val,
          child: child,
        );
      },
      child: GridView.count(
        childAspectRatio: 3 / 4,
        crossAxisCount: 2,
        children: [
          for (var shoe in shoesList) ShoeItem(shoe: shoe),
        ],
      ),
    ));
  }
}
