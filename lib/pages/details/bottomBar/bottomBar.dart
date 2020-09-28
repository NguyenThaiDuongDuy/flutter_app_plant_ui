import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/const.dart';

class DetailsBottomBar extends StatelessWidget {
  const DetailsBottomBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30.0))
            ),
            height: 80,
            child: Center (
              child: Text("Buy Now",
                  style: TextStyle(
                      color: kBackgroundColor,
                      fontSize: 20.0
                  )),
            ),
          ),
        ),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: kBackgroundColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0))
            ),
            height: 80,
            child: Center (
              child: Text("Description",
                  style: TextStyle(
                      color: kTextColor,
                      fontSize: 20.0
                  )),
            ),
          ),
        ),
      ],
    );
  }
}