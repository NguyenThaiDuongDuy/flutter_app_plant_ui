
import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/model.dart';
import 'package:flutter_app_plant_app_ui/pages/details/body/mainImageView.dart';
import 'package:flutter_app_plant_app_ui/pages/details/body/menuView.dart';
import 'package:flutter_app_plant_app_ui/pages/details/body/plantInfo.dart';

class BodyDetails extends StatelessWidget {
  const BodyDetails({
    Key key,
    @required this.args,
  }) : super(key: key);

  final ScreenArguments args;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                MenuView(clickBack: (){Navigator.pop(context);}),
                MainImageView()
              ],
            ),
            PlantInfo(args: args),
          ],
        ),
      ),
    );
  }
}
