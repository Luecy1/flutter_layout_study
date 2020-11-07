import 'package:flutter/material.dart';

main() {
  runApp(
    MaterialApp(
      home: CatalogPage(),
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
          IconButton(icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final product = _ProductList[index];
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
              GestureDetector(
                child: Text('ADD'),
                onTap: () {
                  final snackbar = SnackBar(content: Text('click ${product.name}'));
                  _scaffoldKey.currentState.showSnackBar(snackbar);
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
