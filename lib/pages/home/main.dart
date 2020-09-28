import 'package:flutter/material.dart';
import '../model/const.dart';
import 'package:flutter_app_plant_app_ui/pages/model/plantCardInfo.dart';
import 'package:flutter_app_plant_app_ui/pages/home/bottomBar/bottomBar.dart';
import 'package:flutter_app_plant_app_ui/pages/home/body/bodyHome.dart';
import 'package:flutter_app_plant_app_ui/pages/home/appbar/appBarHome.dart';
import 'package:flutter_app_plant_app_ui/pages/details/details.dart';

void main() {
  runApp(PlantApp());
}

class PlantApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: kBackgroundColor,
          primaryColor: kPrimaryColor,
          textTheme:
              Theme.of(context).textTheme.apply(bodyColor: kPrimaryColor)),
      title: "Plant App",
      initialRoute: '/',
      routes: {
        '/': (context) => _PlantApp(),
        '/details': (context) => DetailsPage()
      },

    );
  }
}

class _PlantApp extends StatefulWidget {
  @override
  __PlantAppState createState() => __PlantAppState();
}

class __PlantAppState extends State<_PlantApp> {
  TextEditingController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<PlantCardInfo> listRecommendedPlant = [
      PlantCardInfo(
          image: "image_1.png",
          plantname: "Hanama",
          country: "VietNam",
          price: 400),
      PlantCardInfo(
          image: "image_2.png",
          plantname: "Banama",
          country: "VietNam",
          price: 200),
      PlantCardInfo(
          image: "image_3.png",
          plantname: "Banamut",
          country: "VietNam",
          price: 500)
    ];

    List<PlantCardInfo> listFeaturePlant = [
      PlantCardInfo(
          image: "bottom_img_1.png",
          plantname: "",
          country: "",
          price: 0),
      PlantCardInfo(
          image: "bottom_img_2.png",
          plantname: "", country: "",
          price: 0)
    ];

    return Scaffold(
      body: BodyHome(
          listRecommendedPlant: listRecommendedPlant,
          listFeaturePlant: listFeaturePlant),
      appBar: AppBarHome(),
      bottomNavigationBar: BottomBar(),
    );
  }

}




