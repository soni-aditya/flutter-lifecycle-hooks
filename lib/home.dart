import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with WidgetsBindingObserver {
  static int data;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    data = 0;
    print('DATA : $data');
    setState(() {});
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    data = 5;
    print('DATA : $data');
    super.dispose();
  }

  AppLifecycleState appLifecycleState;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused:
        data = 1;
        break;
      case AppLifecycleState.inactive:
        data = 2;
        break;
      case AppLifecycleState.resumed:
        data = 3;
        break;
      case AppLifecycleState.suspending:
        data = 4;
        break;
    }
    setState(() {});
  }

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
            child: Text(data.toString()),
          ),
        );
      }),
    );
  }
}
