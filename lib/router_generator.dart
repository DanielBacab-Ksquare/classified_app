import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

class RouteGenerator {
  var generateRoute = ((settings) {
    var routeName = settings.name;
    //var args = settings.arguments;
    switch (routeName) {
      case '/':
        return MaterialPageRoute(builder: (context) =>  HomeScreen());

      case '/login':
        return MaterialPageRoute(builder: (context) => LoginScreen());
    }
  });
}
