import 'package:flutter/material.dart';
import '../product_manager.dart';
import './manage_products.dart';

class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('Manage Products'),
              onTap: () {
                print('tap on list tile');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ManageProductsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('RealWorldApp'),
      ),
      body: ProductManager(),
    );
  }
}
