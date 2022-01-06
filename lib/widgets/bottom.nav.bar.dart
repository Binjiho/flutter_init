import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 80,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          BottomNavItem(
              title: "Jun", svgSrc: "assets/icons/menu.svg", press: () {}),
          BottomNavItem(
            title: "Frank",
            svgSrc: "assets/icons/setting.svg",
            press: () {},
            // isActive?,
          ),
          BottomNavItem(
              title: "Love", svgSrc: "assets/icons/chat.svg", press: () {}),
        ],
      ),
    );
  }
}

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  // final String isActive;
  const BottomNavItem({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
    // required this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(svgSrc),
          Text(
            title,
            // style: TextStyle(color: isActive ? Colors.red : Color:black),
          ),
        ],
      ),
    );
  }
}
