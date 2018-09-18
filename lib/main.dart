import 'package:flutter/material.dart';
import 'package:flutter_lifecycle_hooks/home.dart';

void main() {
  //Setting up the kind of screen orientations that our device supports
//  SystemChrome.setPreferredOrientations(
//      [DeviceOrientation.portraitUp, DeviceOrientation.landscapeLeft]);
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
