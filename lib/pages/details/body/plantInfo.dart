import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/model.dart';
import 'package:flutter_app_plant_app_ui/pages/model/const.dart';
class PlantInfo extends StatelessWidget {
  const PlantInfo({
    Key key,
    @required this.args,
  }) : super(key: key);

  final ScreenArguments args;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          Row(
            children: <Widget>[
              Text(args.plantname,
                  style:Theme.of(context).textTheme.headline3.copyWith(
                      color: kTextColor,
                      fontWeight: FontWeight.bold
                  )),
              Spacer(),
              Text("\$${args.price}",
                  style: Theme.of(context).textTheme.headline4.copyWith(
                      color: kPrimaryColor.withOpacity(0.5),
                      fontWeight: FontWeight.bold))
            ],
          ),
          Row(
            children: <Widget>[Text(args.country,
              style: Theme.of(context).textTheme.headline5.copyWith(
                  color: kPrimaryColor.withOpacity(0.5)
              ),), Spacer(), Text("")],
          ),
        ],
      ),
    );
  }
}