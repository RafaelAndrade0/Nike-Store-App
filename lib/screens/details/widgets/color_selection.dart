import 'package:flutter/material.dart';

class ColorSelection extends StatelessWidget {
  const ColorSelection({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
