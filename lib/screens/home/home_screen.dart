import 'package:flutter/material.dart';
import 'package:nike_store_app/screens/home/widgets/categories.dart';
import 'package:nike_store_app/screens/home/widgets/home_body.dart';
import 'package:nike_store_app/screens/home/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(),
            Categories(),
            HomeBody(),
          ],
        ),
      ),
    );
  }
}
