import 'package:risehallrepo/routes/routing_constants.dart';
import 'package:risehallrepo/ui/pages/home.dart';
import 'package:risehallrepo/ui/pages/undefinedScreen.dart';
import 'package:flutter/material.dart';
import 'package:risehallrepo/analytics/analytics_service.dart';

List<String> navStack = ["Home"];
Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      navStack.add("Splash");
      print(navStack);
      // analytics.setCurrentScreen(screenName: HomeRoute);
      return MaterialPageRoute(builder: (context) => Home());
    // case SearchRoute:
    //   navStack.add("Search");
    //   print(navStack);
    //   analytics.setCurrentScreen(screenName: SearchRoute);
    //   return PageRouteBuilder(
    //       pageBuilder: (context, animation1, animation2) => SearchScreen());
    default:
      navStack.add("undefined");
      print(navStack);
      // analytics.setCurrentScreen(screenName: "/undefined");
      return MaterialPageRoute(
        builder: (context) => UndefinedScreen(
          name: settings.name,
        ),
      );
  }
}
