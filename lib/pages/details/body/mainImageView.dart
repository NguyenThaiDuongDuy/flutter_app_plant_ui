import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/const.dart';

class MainImageView extends StatelessWidget {
  const MainImageView({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery
        .of(context)
        .size;
    return Container(
        height:screenSize.height * 0.8,
        width: screenSize.width * 0.75,
        decoration: BoxDecoration(
            boxShadow: [BoxShadow(
                offset: Offset(0.0,10.0),
                color: kPrimaryColor.withOpacity(0.25),
                blurRadius: 10
            )],
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), topLeft: Radius.circular(60)),
            image: DecorationImage(
              image: AssetImage("assets/images/img.png"),
              fit: BoxFit.cover,
              alignment: Alignment.topLeft,

            )
        )
    );
  }
}