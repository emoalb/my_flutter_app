import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products){
    print('[Products Widgets] Constructor');
  } //automatically sets products
  @override
  Widget build(BuildContext context) {
    print('[Products Widgets] Build');
    // TODO: implement build
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/food.jpeg'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
