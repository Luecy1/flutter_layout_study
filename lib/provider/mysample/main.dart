import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'model.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => CartModel(),
    child: MaterialApp(
      home: MyPage(),
    ),
  ));
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Column(
        children: [
          Expanded(
            child: ButtonPage(),
          ),
          Expanded(
            child: OutputWidget(),
          ),
        ],
      ),
    );
  }
}

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          // ビルド中はread不可能
          final cartModel = context.read<CartModel>();
          cartModel.add(0);
        },
        child: Text('hoge'),
      ),
    );
  }
}

class OutputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cartModel = context.watch<CartModel>();

    return Center(
      child: Text(' $cartModel '),
    );
  }
}
