import 'package:flutter/material.dart';
import 'package:flutter_course/pages/products.dart';
import 'package:flutter_course/pages/product_create.dart';
import 'package:flutter_course/pages/product_list.dart';
import 'package:flutter_course/side_bar.dart';

class ProductsAdminPage extends StatelessWidget {
  final Function addProduct;
  final Function deleteProduct;

  ProductsAdminPage({this.addProduct, this.deleteProduct});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        drawer: MainDrawer(),
        appBar: AppBar(
          title: Text("Manage Products"),
          bottom: TabBar(tabs: <Widget>[
            Tab(
              icon: Icon(Icons.create),
              text: 'Create Product',
            ),
            Tab(
              icon: Icon(Icons.list),
              text: 'My Products',
            ),
          ]),
        ),
        body: Center(
          child: TabBarView(children: <Widget>[
            ProductCreatePage(addProduct),
            ProductListPage(),
          ],),
        ),
      ),
    );
  }
}
