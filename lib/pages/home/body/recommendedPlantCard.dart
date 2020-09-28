import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/plantCardInfo.dart';
import 'package:flutter_app_plant_app_ui/pages/model/const.dart';

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard(
      {Key key,
        @required this.info, this.clickCard}
      )
      : super(key: key);

  final PlantCardInfo info;
  final Function clickCard;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: clickCard,
      child: Container(
        padding: EdgeInsets.only(
            left: kDefaultPadding/2,
            right: kDefaultPadding/2,
        bottom: kDefaultPadding/2),
        width: screenSize.width * 0.4,
        child: Column(
          children: <Widget>[
            Image(image: AssetImage("assets/images/${info.image}")),
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  color: Theme.of(context).backgroundColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0.0, 2.0),
                      blurRadius: 10,
                      color: Theme.of(context).primaryColor.withOpacity(0.25),
                    )
                  ]),
              child: Column(
                children: [
                  Row(
                    children: <Widget>[
                      Text("${info.plantname}",
                          style:Theme.of(context).textTheme.subtitle2.copyWith(
                              color: kTextColor,
                              fontWeight: FontWeight.bold
                          )),
                      Spacer(),
                      Text("\$${info.price}")
                    ],
                  ),
                  Row(
                    children: <Widget>[Text("${info.country}",
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                          color: kPrimaryColor.withOpacity(0.5)
                      ),), Spacer(), Text("")],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
