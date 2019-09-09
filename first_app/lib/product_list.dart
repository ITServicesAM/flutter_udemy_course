import 'package:flutter/material.dart';

import 'pages/product_details.dart';

class ProductList extends StatelessWidget {
  final List<Map<String, String>> products;

  ProductList(this.products);

  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['imagePath']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.push<bool>(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return ProductDetailsPage(
                            products[index]['imagePath'],
                            products[index]['title'],
                          );
                        }),
                      ).then((bool val) {
                        if (val != null && val) {
                          products.removeAt(index);
                        }
                      }),
                  child: Text('Details')),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildProductList(BuildContext context) {
    Widget productList;
    if (products.length > 0) {
      productList = ListView.builder(
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    } else {
      productList = Center(
        child: Text('No products found please add some'),
      );
    }

    return productList;
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList(context);
  }
}
