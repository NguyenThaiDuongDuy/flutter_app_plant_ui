import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/model.dart';
import 'package:flutter_app_plant_app_ui/pages/details/bottomBar/bottomBar.dart';
import 'package:flutter_app_plant_app_ui/pages/details/body/Bodydetails.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return MaterialApp(
      title: "details",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: DetailsBottomBar(),
        body: BodyDetails(args: args)
      ),
    );
  }
}







