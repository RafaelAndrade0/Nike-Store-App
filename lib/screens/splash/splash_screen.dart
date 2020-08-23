import 'dart:async';

import 'package:flutter/material.dart';
import 'package:nike_store_app/screens/home/home_screen.dart';
import 'package:nike_store_app/shared/custom_routes/fade_route.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5),
      () => Navigator.pushReplacement(
        context,
        FadeRoute(
          page: HomeScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF262626),
      body: Center(
        child: Image.asset('assets/images/splash_logo.gif'),
      ),
    );
  }
}
