import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/const.dart';
import 'package:flutter_svg/svg.dart';

class MenuView extends StatelessWidget {
  const MenuView({
    Key key,
    @required this.clickBack
  }) : super(key: key);

  final Function clickBack;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Container(
      height:screenSize.height * 0.8,
      width: screenSize.width * 0.25,
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.only(top:50.0),
              child: IconButton(icon: Icon(Icons.keyboard_backspace), onPressed: clickBack,iconSize: 30)
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Center(
                    child: Container(
                        width: 66,
                        height: 66,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: kBackgroundColor,
                            boxShadow: [BoxShadow(
                                offset: Offset(0.0,10),
                                color: kPrimaryColor.withOpacity(0.25),
                                blurRadius: 50
                            )],
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: SvgPicture.asset("assets/icons/sun.svg")
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Container(
                        width: 66,
                        height: 66,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: kBackgroundColor,
                            boxShadow: [BoxShadow(
                                offset: Offset(0.0,10),
                                color: kPrimaryColor.withOpacity(0.25),
                                blurRadius: 50
                            )],
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: SvgPicture.asset("assets/icons/icon_2.svg")
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Container(
                        width: 66,
                        height: 66,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: kBackgroundColor,
                            boxShadow: [BoxShadow(
                                offset: Offset(0.0,10),
                                color: kPrimaryColor.withOpacity(0.25),
                                blurRadius: 50
                            )],
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: SvgPicture.asset("assets/icons/icon_3.svg")
                    ),
                  ),
                ),
                Container(
                  child: Center(
                    child: Container(
                        width: 66,
                        height: 66,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                            color: kBackgroundColor,
                            boxShadow: [BoxShadow(
                                offset: Offset(0.0,10),
                                color: kPrimaryColor.withOpacity(0.25),
                                blurRadius: 50
                            )],
                            borderRadius: BorderRadius.all(Radius.circular(5))
                        ),
                        child: SvgPicture.asset("assets/icons/icon_4.svg")
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}