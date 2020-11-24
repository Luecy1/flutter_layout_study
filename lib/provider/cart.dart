import 'package:flutter/material.dart';
import 'package:flutter_layout_study/provider/model.dart';
import 'package:provider/provider.dart';

class MyCart extends StatelessWidget {
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: _CartList(),
              ),
            ),
            Divider(height: 4.0, color: Colors.black),
            _CartTotal(),
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

    var cart = context.watch<CartModel>();

    return ListView.builder(
      itemCount: cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline_outlined),
          onPressed: () {},
        ),
        title: Text(
          cart.items[index].name,
          style: itemNameStyle,
        ),
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var hugeStyle = Theme.of(context).textTheme.headline1.copyWith(fontSize: 48.0);
    return SizedBox(
      height: 200.0,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CartModel>(
              builder: (context, cart, child) => Text('\$${cart.totalPrice}', style: hugeStyle),
            ),
            SizedBox(width: 24.0),
            FlatButton(
              onPressed: () {
                final snackBar = SnackBar(content: Text('Buying not supported.'));
                Scaffold.of(context).showSnackBar(snackBar);
              },
              child: Text('BUY'),
            ),
          ],
        ),
      ),
    );
  }
}
