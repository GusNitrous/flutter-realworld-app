import 'package:flutter/material.dart';
import 'dart:async';


class ProductsPage extends StatelessWidget {
  final String title;
  final String imageUrl;

  ProductsPage(this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        print('pressed');
        // Navigator.pop(context, false);
        return Future.value(true);
      },
      child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageUrl),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(title),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  child: Text('DELETE'),
                  onPressed: () => Navigator.pop(context, true),
                ),
              )
            ],
          )),
    );
  }
}
