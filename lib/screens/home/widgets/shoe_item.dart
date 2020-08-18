import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store_app/models/shoe.dart';
import 'package:nike_store_app/screens/details/details_screen.dart';
import 'package:nike_store_app/shared/custom_routes/fade_route.dart';

class ShoeItem extends StatelessWidget {
  final Shoe shoe;

  const ShoeItem({Key key, @required this.shoe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        FadeRoute(
          page: DetailsScreen(shoe: shoe),
        ),
      ),
      child: Stack(
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
            decoration: BoxDecoration(
              color: Colors.white,
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Hero(
                      tag: shoe.id,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.fitWidth,
                            image: AssetImage(
                              shoe.thumbImage ?? 'assets/images/air.png',
                            ),
                          ),
                        ),
                      ),
                    ),
                    // child: Transform.rotate(
                    //   angle: -pi / 7,
                    //   child: Hero(
                    //     tag: shoe.id,
                    //     child: Container(
                    //       decoration: BoxDecoration(
                    //         image: DecorationImage(
                    //           fit: BoxFit.cover,
                    //           image: AssetImage(
                    //             shoe.thumbImage ?? 'assets/images/air.png',
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ),
                  Text(
                    shoe.title ?? 'Air Jordans',
                    // textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: GoogleFonts.raleway(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${shoe.price.toString()}' ?? '\$500.00',
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
            ),
          ),
        ],
      ),
    );
  }
}
