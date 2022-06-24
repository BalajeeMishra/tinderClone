import 'package:flutter/material.dart';
import 'screen/swapScreen.dart';
import 'screen/tabScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(fontFamily: 'icomoon'),
      home: TabScreen(),
    );
  }
}
