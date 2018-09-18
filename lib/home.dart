import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation and Lifecycle'),
      ),
      body: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
        return Center(
          child: Container(
            color: (orientation == Orientation.portrait)
                ? Colors.amber
                : Colors.purple,
          ),
        );
      }),
    );
  }
}
