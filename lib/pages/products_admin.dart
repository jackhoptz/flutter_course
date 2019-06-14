import 'package:flutter/material.dart';

import 'package:flutter_course/pages/products.dart';

class ProductsAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            AppBar(
              automaticallyImplyLeading: false,
              title: Text('Choose'),
            ),
            ListTile(
              title: Text('All Products'),
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => ProductsAdminPage()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(title:  Text("Manage Products"),),
      body: Center(child: Text("Manage Your Products"),),
    );
  }

}