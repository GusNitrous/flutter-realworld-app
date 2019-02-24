import 'package:flutter/material.dart';

class ProductCreatePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductPageState();
  }
}

class _ProductPageState extends State<ProductCreatePage> {
  String titleValue = '';
  double priceValue;
  String descriptionValue = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
      children: <Widget>[
        TextField(
          decoration: InputDecoration(labelText: 'Title'),
          onChanged: (String value) {
          setState(() {
            titleValue = value;
          });
        },),

        TextField(
          decoration: InputDecoration(labelText: 'Price'),
          keyboardType: TextInputType.number,
          onChanged: (String value) {
          setState(() {
            priceValue = double.parse(value);
          });
        },),

        TextField(
          decoration: InputDecoration(labelText: 'Description'),
          maxLines: 4,
          onChanged: (String value) {
          setState(() {
            descriptionValue = value;
          });
        },),
      ],
    ));
  }
}
