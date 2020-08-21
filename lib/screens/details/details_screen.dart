import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_store_app/models/shoe.dart';
import 'package:nike_store_app/screens/details/widgets/circular_background.dart';
import 'package:nike_store_app/screens/details/widgets/color_selection.dart';
import 'package:nike_store_app/screens/details/widgets/description_body.dart';

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
            height: size.height * .9,
            width: double.infinity,
            child: new CustomPaint(
              painter: new CircularBackgroundPainter(),
            ),
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ColorSelection(size: size),
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
              DescriptionBody(size: size, widget: widget),
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
                        style: GoogleFonts.rubik(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                      ),
                      Text(
                        "\$${widget.shoe.price}",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
