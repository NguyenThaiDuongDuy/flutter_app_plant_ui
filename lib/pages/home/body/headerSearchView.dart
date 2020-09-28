import 'package:flutter/material.dart';
import 'package:flutter_app_plant_app_ui/pages/model/const.dart';

class HeaderSearchView extends StatelessWidget {
  const HeaderSearchView({
    Key key,
  }) :  super(key: key);



  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height * 0.2,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, screenSize.height * 0.1),
            child: Row(
              children: <Widget>[
                Text("Hi UIShopy",
                    style: Theme.of(context).textTheme.headline3.copyWith(color: kBackgroundColor,fontWeight: FontWeight.bold)
                ),
                Spacer(),
                Image(
                  image: AssetImage("assets/images/logo.png"),
                )
              ],
            ),
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            height: screenSize.height * 0.2 - 22,
          ),
          Positioned(
              left: 0.0,
              right: 0.0,
              bottom: 0.0,
              child: Container(
                  alignment: Alignment.center,
                  child: TextField(
                    onSubmitted: (String value) async {
                      print("${value}");
                    },
                    decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: "Search",
                      hintStyle: TextStyle(
                          color: Theme.of(context)
                              .primaryColor
                              .withOpacity(0.5)),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: Theme.of(context)
                                .primaryColor
                                .withOpacity(0.25))
                      ]),
                  height: 54,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding)
              )),
        ],
      ),
    );
  }
}