import 'package:flutter/material.dart';

class ProductDetailsPage extends StatelessWidget {
  final String imagePath;
  final String title;

  ProductDetailsPage(this.imagePath, this.title);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, false);
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('ProductDetails'),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Image.asset(imagePath),
              Container(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: Text(title),
                ),
              ),
              Center(
                child: RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  onPressed: () => Navigator.pop(context, true),
                  child: Text('DELETE'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
