import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/plantCardInfo.dart';
import 'package:flutter_app_plant_app_ui/pages/home/body/headerSearchView.dart';
import 'package:flutter_app_plant_app_ui/pages/home/body/headerScrollView.dart';
import 'package:flutter_app_plant_app_ui/pages/home/body/recommendedPlantCard.dart';
import 'package:flutter_app_plant_app_ui/pages/home/body/featurePlantCard.dart';
import 'package:flutter_app_plant_app_ui/pages/model/model.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({
    Key key,
    @required this.listRecommendedPlant,
    @required this.listFeaturePlant,
  }) : super(key: key);

  final List<PlantCardInfo> listRecommendedPlant;
  final List<PlantCardInfo> listFeaturePlant;

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Stack(
        children: [
          Container(color: Theme.of(context).backgroundColor),
          Positioned(
              top: screenSize.height * 0.2 + 5,
              bottom: 0,
              width: screenSize.width,
              child: Container(
                  color: Theme.of(context).backgroundColor,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                        HeaderScrollView(
                            titleLbl: "Recommended",
                            clickMoreButton: () {
                              print("Click more button Recommended header");
                            }),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Row(
                                children: listRecommendedPlant
                                    .map((item) => RecommendedPlantCard(
                                  info: item,
                                  clickCard: () {
                                    Navigator.pushNamed(context, "/details",
                                    arguments:ScreenArguments(item.plantname, item.country, item.price));
                                    print("Click Card");
                                  },
                                ))
                                    .toList()),
                          ),
                        ),
                        HeaderScrollView(
                            titleLbl: "Feature plants",
                            clickMoreButton: () {
                              print("Click more button Feature header");
                            }),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.start,
                                children: listFeaturePlant
                                    .map((item) => FeaturePlantCard(
                                  info: item,
                                ))
                                    .toList()),
                          ),
                        ),
                      ],
                    ),
                  ))),
          Positioned(
            child: Container(
              color: Theme.of(context).backgroundColor,
              child: HeaderSearchView(),
            ),
          )
        ],
      ),
    );
  }
}