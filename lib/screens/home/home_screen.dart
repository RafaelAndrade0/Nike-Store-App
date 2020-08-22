import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store_app/screens/home/widgets/categories.dart';
import 'package:nike_store_app/screens/home/widgets/home_body.dart';
import 'package:nike_store_app/screens/home/widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildDrawer(),
      key: _drawerKey,
      body: SafeArea(
        child: Column(
          children: [
            HomeHeader(
              drawerKey: _drawerKey,
            ),
            Categories(),
            HomeBody(),
          ],
        ),
      ),
    );
  }

  ClipRRect buildDrawer() {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(35),
        bottomRight: Radius.circular(35),
      ),
      child: Drawer(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/renan.jpg'),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Welcome,',
                    style: GoogleFonts.raleway(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Renan!',
                    style: GoogleFonts.raleway(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    // color: Colors.red,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Row(
                      // mainAxisAlignment: ,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Icon(Icons.home)),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Catalog',
                          style: GoogleFonts.raleway(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    child: Row(
                      // mainAxisAlignment: ,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Icon(Icons.shopping_basket)),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Your Cart',
                          style: GoogleFonts.raleway(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    child: Row(
                      // mainAxisAlignment: ,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Icon(Icons.insert_drive_file)),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Your Orders',
                          style: GoogleFonts.raleway(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    child: Row(
                      // mainAxisAlignment: ,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Icon(Icons.favorite)),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Favorites',
                          style: GoogleFonts.raleway(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 45,
                    child: Row(
                      // mainAxisAlignment: ,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(
                              left: 10,
                            ),
                            child: Icon(Icons.label)),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          'Logout',
                          style: GoogleFonts.raleway(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Image(
                image: AssetImage('assets/images/logo.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
