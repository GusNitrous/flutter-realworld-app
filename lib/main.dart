import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './product_manager.dart';

void main() { 
  debugPaintSizeEnabled = false;
  runApp(RealWorldApp());
}

class RealWorldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('RealWorldApp'),
        ),
        body: ProductManager('Test product'),
      ),
    );
  }
}
