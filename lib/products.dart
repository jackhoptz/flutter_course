import 'package:flutter/material.dart';
import 'package:flutter_course/pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;
  final Function deleteProducts;

  Products(this.products, {this.deleteProducts}) {
    print('[Products Widget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
    Widget productCard = Center(
      child: Text('Non found'),
    );

    if (products.length > 0) {
      productCard = ListView.builder(
        itemBuilder: buildProductItem,
        itemCount: products.length,
      );
    }
    return productCard;
  }

  Widget buildProductItem(BuildContext context, index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Details'),
                onPressed: () {
                  Navigator.push<bool>(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(products[index]['title'], products[index]['image']),
                    ),
                  ).then((bool willDelete) {
                    if (willDelete) {
                      deleteProducts(index);
                    }
                  });
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
