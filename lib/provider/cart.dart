
import 'package:flutter/material.dart';
import 'package:flutter_layout_study/provider/model.dart';
import 'package:flutter_layout_study/provider/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: appTheme,
    home: _MyCart(),
  ));
}

class _MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.headline1,
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
        color: Colors.yellow,
        child: Column(
          children: [
            Divider(
              height: 4.0,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class _CartList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final itemNameStyle = Theme.of(context).textTheme.headline6;

    final cart = CartModel();
    cart.add(CatalogModel().getById(1));
    cart.add(CatalogModel().getById(2));

    return Container();
  }
}
