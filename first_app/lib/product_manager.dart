import 'package:flutter/material.dart';

import './product_list.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  ProductManager({this.startingProduct});

  @override
  _ProductManagerState createState() => _ProductManagerState();
}

class _ProductManagerState extends State<ProductManager> {
  List<Map<String, String>> _products = [];

  @override
  void initState() {
    super.initState();
    if (widget.startingProduct != null) {
      _products.add(widget.startingProduct);
    }
  }

  void _addProduct(Map<String, String> product) {
    setState(() {
      _products.add(product);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(16),
          child: ProductControl(_addProduct),
        ),
        Expanded(
          child: ProductList(_products),
        )
      ],
    );
  }
}
