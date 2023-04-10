import 'package:flutter/material.dart';
import 'package:rozpetal/Components/RoutesNmae.dart';

import 'Components/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RoutesName.home,
      onGenerateRoute: Routes.Generate_Routes,
    );
  }
}
