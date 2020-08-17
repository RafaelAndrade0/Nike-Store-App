import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: (4 / 5),
        children: List.generate(
          100,
          (index) {
            return Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[900],
                  ),
                  margin: EdgeInsets.only(
                    left: 10,
                    right: 5,
                    top: 10,
                    bottom: 10,
                  ),
                ),
                Container(
                  // color: Colors.red,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.all(
                    //   Radius.circular(15),
                    // ),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        spreadRadius: 3,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            // height: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/images/sneaker.png',
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Air Jordans',
                                  style: GoogleFonts.raleway(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 1,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 15),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '\$500.00',
                                        style: GoogleFonts.raleway(
                                          fontSize: 16,
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            IconButton(
                              icon: Icon(Icons.shopping_cart),
                              onPressed: () {},
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );

            // return Stack(children: [
            //   Container(
            //     margin: EdgeInsets.only(
            //       left: 10,
            //       right: 10,
            //       top: 60,
            //     ),
            //     height: 500,
            //     decoration: BoxDecoration(
            //       // color: Colors.red,
            //       color: Colors.white,
            //       borderRadius: BorderRadius.all(
            //         Radius.circular(15),
            //       ),
            // boxShadow: [
            //   BoxShadow(
            //     blurRadius: 3,
            //     spreadRadius: 3,
            //     color: Colors.black12,
            //   ),
            // ],
            //     ),
            //   ),
            // Container(
            //   height: 200,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(
            //       image: AssetImage(
            //         'assets/images/sneaker.png',
            //       ),
            //     ),
            //   ),
            // ),
            //   Positioned(
            //     top: 180,
            //     bottom: 0,
            //     left: 0,
            //     right: 0,
            //     child: Padding(
            //       padding: EdgeInsets.only(
            //         left: 20,
            //         right: 20,
            //       ),
            //       child: Column(
            //         mainAxisAlignment: MainAxisAlignment.spaceAround,
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             'Air Jordans',
            //             style: TextStyle(
            //               fontWeight: FontWeight.bold,
            //               fontSize: 30,
            //             ),
            //           ),
            //           Row(
            //             crossAxisAlignment: CrossAxisAlignment.end,
            //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //             children: [
            //               Text(
            //                 '\$400.00',
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 15,
            //                 ),
            //               ),
            //               Text(
            //                 'Buy it!',
            //                 style: TextStyle(
            //                   fontWeight: FontWeight.bold,
            //                   fontSize: 15,
            //                 ),
            //               ),
            //               // FlatButton(onPressed: () {}, child: Text('Buy'))
            //             ],
            //           )
            //         ],
            //       ),
            //     ),
            //   )
            // ]);
          },
        ),
      ),
    );
  }
}
