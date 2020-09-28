import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget{

  @override
  Size get preferredSize => const Size.fromHeight(100.0);

  const AppBarHome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      leading: IconButton(
        onPressed: () {
          print("Press menu");
        },
        icon: SvgPicture.asset("assets/icons/menu.svg"),
      ),
    );
  }
}