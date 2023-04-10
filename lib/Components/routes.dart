import 'package:flutter/material.dart';
import 'package:rozpetal/Components/RoutesNmae.dart';
import 'package:rozpetal/View/Home.dart';
import 'package:rozpetal/View/Screen2.dart';
import 'package:rozpetal/View/View3.dart';
import 'package:rozpetal/View/view4.dart';

class Routes {
  static Route<dynamic> Generate_Routes(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.view2:
        return MaterialPageRoute(
            builder: (BuildContext context) => const View2());
      case RoutesName.view3:
        return MaterialPageRoute(builder: (BuildContext context) => View3());
      case RoutesName.view4:
        return MaterialPageRoute(
            builder: (BuildContext context) => const View4());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('You are on the Wrong way'),
            ),
          );
        });
    }
  }
}
