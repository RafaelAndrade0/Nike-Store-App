import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../details_screen.dart';

class DescriptionBody extends StatelessWidget {
  const DescriptionBody({
    Key key,
    @required this.size,
    @required this.widget,
  }) : super(key: key);

  final Size size;
  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        margin: EdgeInsets.only(
          top: size.height * .08,
          bottom: size.height * .08,
        ),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.shoe.title,
                style: GoogleFonts.rubik(
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              Row(
                children: [
                  SmoothStarRating(
                    rating: 4.5,
                    isReadOnly: true,
                    size: 20,
                    filledIconData: Icons.star,
                    halfFilledIconData: Icons.star_half,
                    defaultIconData: Icons.star_border,
                    starCount: 5,
                    allowHalfRating: true,
                    spacing: 2.0,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '4.5',
                    style: GoogleFonts.rubik(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Text(
                'BUILT TO BE CLUTCH',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'In the game’s crucial moments, KD thrives. He takes over on both ends of the court, making defenders fear his unstoppable moves and shutting down opponents with his defensive prowess. The KD13 EP helps him play at an elite level with full-length cushioning and an extra forefoot unit. This EP version is designed with an extra-durable outsole for use on outdoor courts.',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Text(
                'Full-Length, Close-to-Foot Cushioning',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Stitched directly to the upper, a full-length Nike Air Zoom cushion follows the shape of your foot to give an ultra-responsive sensation and a smooth heel-to-toe transition.',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
