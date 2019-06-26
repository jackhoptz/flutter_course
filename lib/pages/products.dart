import 'package:flutter/material.dart';
import 'package:flutter_course/product_manager.dart';
import 'package:flutter_course/side_bar.dart';

class ProductsPage extends StatelessWidget {
  final List<Map<String, dynamic>> products;

  ProductsPage({this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
        title: Text('EasyList'),
      ),
      body: Column(
        children: <Widget>[
          ProductManager(
              products: products
          ),
        ],
      ),
    );
  }
}
