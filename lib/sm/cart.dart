import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CartModel(),
      child: MaterialApp(
        home: CatalogPage(),
      ),
    ),
  );
}

class CatalogPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Catalog'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => CartPage(),
              ));
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final product = _ProductList[index];

          // final addFlg = Provider.of<CartModel>(context, listen: false).contains(product);

          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 100.0,
                  width: 100.0,
                  child: Container(
                    color: product.color,
                  ),
                ),
              ),
              Text(
                product.name,
                style: TextStyle(fontSize: 20.0),
              ),
              Spacer(flex: 2),
              Consumer<CartModel>(
                builder: (_, model, __) {
                  return GestureDetector(
                    child: model.contains(product) ? Text('ADDED') : Text('ADD'),
                    onTap: () {
                      final snackbar = SnackBar(content: Text('click ${product.name}'));
                      _scaffoldKey.currentState.showSnackBar(snackbar);
                      Provider.of<CartModel>(context, listen: false).add(product);
                    },
                  );
                },
              ),
              Spacer(flex: 1),
            ],
          );
        },
        itemCount: _ProductList.length,
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Consumer<CartModel>(
          builder: (context, cart, child) {
            return Text("Total price: ${cart.totalPrice}");
          },
        ),
      ),
    );
  }
}

class CartModel extends ChangeNotifier {
  final List<_Product> _items = [];

  UnmodifiableListView<_Product> get items => UnmodifiableListView(_items);

  int get totalPrice => _items.length * 42;

  void add(_Product item) {
    _items.add(item);
    notifyListeners();
  }

  bool contains(_Product item) {
    return _items.contains(item);
  }

  void removeAll() {
    _items.clear();
    notifyListeners();
  }
}

const _ProductList = [
  _Product('GB', Color(0xff96514d)),
  _Product('GBC', Colors.deepPurple),
  _Product('GBA', Colors.purple),
  _Product('DS', Colors.black),
  _Product('Wii', Colors.white),
  _Product('3DS', Colors.green),
  _Product('Switch', Colors.pinkAccent),
];

class _Product {
  final String name;
  final Color color;

  const _Product(this.name, this.color);
}
