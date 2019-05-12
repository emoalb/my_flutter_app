import 'package:flutter/material.dart';

import './products.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;

  ProductManager(this.startingProduct){
    print('[Products Manager] Constructor');
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = [];

  @override
  void initState() {
    // TODO: implement initState
    print('[Products Manager] init state');
    _products.add(widget.startingProduct); //doing magic :)
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('[Products Manager] Build');
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () => {
                    setState(() {
                      _products.add('Advanced Food Tester');
                      print(_products);
                    })
                  },
              child: Text('Add Product'),
            )),
        Products(_products),
      ],
    );
  }
}
