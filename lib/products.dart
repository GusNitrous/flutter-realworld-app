import 'package:flutter/material.dart';
import './pages/product.dart';

class Products extends StatelessWidget {
  List<Map<String, String>> products = [];

  Products(this.products);

  // Build product item.
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset('assets/food.jpg'),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Details'),
                  onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => ProductsPage(products[index]['title'], products[index]['image']),
                        ),
                      ))
            ],
          )
        ],
      ),
    );
  }

  // Build product list.
  Widget _buildProductList() {
    Widget productCard =
        Center(child: Text('No product found, please add some'));

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }

    return productCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
