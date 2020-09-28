import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/const.dart';

class HeaderScrollView extends StatelessWidget {
  const HeaderScrollView({
    Key key,  @required this.titleLbl , this.clickMoreButton
  }) : super(key: key);
  
  final String titleLbl;
  final Function clickMoreButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
      child: Row(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                child: Text(titleLbl,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        .copyWith(
                        color: kTextColor,
                        fontWeight: FontWeight.bold)),
              ),
              Positioned(
                  left: 0,
                  bottom: 0,
                  right: 5,
                  child: Container(
                    height: 3,
                    color: Theme.of(context)
                        .primaryColor
                        .withOpacity(0.25),
                  ))
            ],
          ),
          Spacer(),
          FlatButton(
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: clickMoreButton,
              child: Text(
                  "More",
                  style: Theme.of(context).textTheme.subtitle2.copyWith(color: kBackgroundColor, fontWeight: FontWeight.bold)
              ))
        ],
      ),
    );
  }
}