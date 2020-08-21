import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store_app/models/shoe.dart';
import 'package:nike_store_app/screens/details/widgets/circular_background.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class DetailsScreen extends StatefulWidget {
  final Shoe shoe;

  const DetailsScreen({Key key, @required this.shoe}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List<String> sizes = [
    "33",
    "34",
    "35",
    "36",
    "37",
    "38",
    "39",
    "40",
    "41",
    "42",
    "43",
    "44"
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF111111),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height,
            // height: double.infinity,
            height: size.height * .9,
            width: double.infinity,
            child: new CustomPaint(
              painter: new CircularBackgroundPainter(),
            ),
          ),
          Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: size.height * .09,
                    child: Column(
                      children: [
                        Container(
                          height: size.height * .04,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Container(
                          height: size.height * .04,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red[900],
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Container(
                          height: size.height * .04,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.blue[900],
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Container(
                          height: size.height * .04,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.orange,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        Container(
                          height: size.height * .04,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.green,
                            border: Border.all(
                              width: 2,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Hero(
                      tag: widget.shoe.id,
                      child: Image(
                        image: AssetImage(widget.shoe.thumbImage),
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: size.height * .08,
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                  // vertical: 10,
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sizes.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              sizes[index],
                              style: GoogleFonts.rubik(
                                fontWeight: FontWeight.bold,
                                fontSize: 45,
                                color: selectedIndex == index
                                    ? Colors.white
                                    : Colors.grey.withOpacity(.4),
                              ),
                            ),
                            AnimatedContainer(
                              duration: Duration(milliseconds: 500),
                              margin: EdgeInsets.only(top: 10 / 4),
                              height: 2,
                              width: 30,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.transparent,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
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
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              color: Color(0xFF111111),
              padding: EdgeInsets.only(
                left: 10,
                right: 30,
              ),
              height: size.height * .08,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: size.height * .06,
                    width: size.width * .5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'ADD TO CART',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Price',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "\$200.00",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
