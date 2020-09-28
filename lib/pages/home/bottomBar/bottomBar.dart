import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0.0, 5.0),
                color: Colors.black.withOpacity(0.25),
                blurRadius: 50
            )
          ]
      ),
      child: BottomNavigationBar(
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/flower.svg"),
              title: Text("")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/heart-icon.svg"),
              title: Text("")),
          BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/icons/user-icon.svg"),
              title: Text(""))
        ],
        onTap: (index) {
          print("${index}");
        },
      ),
    );
  }
}