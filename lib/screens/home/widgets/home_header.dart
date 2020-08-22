import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  final GlobalKey<ScaffoldState> drawerKey;

  const HomeHeader({Key key, @required this.drawerKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            'assets/images/logosvg.svg',
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
                    onPressed: () {},
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 5),
                    child: IconButton(
                      icon: SvgPicture.asset(
                        'assets/icons/menu.svg',
                        color: Colors.grey[900],
                      ),
                      onPressed: () {
                        drawerKey.currentState.openDrawer();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
