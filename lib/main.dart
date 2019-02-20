import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'pages/auth.dart';

void main() { 
  debugPaintSizeEnabled = false;
  runApp(RealWorldApp());
}

class RealWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.deepOrange,
        accentColor: Colors.deepPurple
      ),
      home: AuthPage(),
    );
  }
}
