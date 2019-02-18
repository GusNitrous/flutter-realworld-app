import 'package:flutter/material.dart';

class ProductsControl extends StatelessWidget {
  final Function addProduct;

  ProductsControl(this.addProduct);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: () {
        addProduct({'title': 'Chocolate', 'image': 'assets/food.jpg'});
      },
      child: Text('Add product'),
    );
  }
}
