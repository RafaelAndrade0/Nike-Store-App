import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image(
            image: AssetImage('assets/images/logo3.png'),
            height: 20,
          ),
          Row(
            children: <Widget>[
              Row(
                children: <Widget>[
                  IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/search.svg',
                        height: 20,
                        color: Colors.grey[900],
                        fit: BoxFit.fitHeight,
                      ),
                      onPressed: () {}),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/menu.svg',
                        color: Colors.grey[900],
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );

    // return Padding(
    //   padding: EdgeInsets.only(
    //     top: 25,
    //     left: 25,
    //     right: 25,
    //     bottom: 15,
    //   ),
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //       TweenAnimationBuilder(
    //         child: Container(
    //           height: 400,
    //           decoration: BoxDecoration(
    //             image: DecorationImage(
    //               image: AssetImage('assets/images/logo.png'),
    //             ),
    //           ),
    //         ),
    //         duration: Duration(milliseconds: 2000),
    //         tween: Tween<double>(begin: 0, end: 1),
    //         builder: (BuildContext context, double val, Widget child) {
    //           return Opacity(
    //             opacity: val,
    //             child: child,
    //           );
    //         },
    //       ),
    // Row(
    //   children: <Widget>[
    //     Row(
    //       children: <Widget>[
    //         IconButton(
    //             icon: SvgPicture.asset(
    //               'assets/icons/search.svg',
    //               height: 20,
    //               color: Colors.grey[900],
    //               fit: BoxFit.fitHeight,
    //             ),
    //             onPressed: () {}),
    //         Container(
    //           padding: EdgeInsets.only(left: 5),
    //           child: IconButton(
    //             icon: SvgPicture.asset(
    //               'assets/icons/menu.svg',
    //               color: Colors.grey[900],
    //             ),
    //             onPressed: () {},
    //           ),
    //         ),
    //       ],
    //     )
    //   ],
    // ),
    //       // Categories(),
    //     ],
    //   ),
    // );
  }
}
