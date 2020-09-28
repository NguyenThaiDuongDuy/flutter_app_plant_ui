import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/plantCardInfo.dart';

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard(
      {Key key,
        @required this.info}
      )
      : super(key: key);

  final PlantCardInfo info;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 5.0, right: 5.0),
      width: screenSize.width * 0.8,
      height: 200,
      decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
         ),
            child: ClipRRect(
             borderRadius:BorderRadius.circular(20.0),
              child: Image(image: AssetImage("assets/images/${info.image}"), fit: BoxFit.cover,
              ),
            ),
    );
  }
}
