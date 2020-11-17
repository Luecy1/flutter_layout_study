// https://github.com/flutter/samples/blob/master/provider_shopper/lib/screens/catalog.dart

import 'package:flutter/material.dart';
import 'package:flutter_layout_study/provider/model.dart';
import 'package:flutter_layout_study/provider/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => CatalogModel()),
        ChangeNotifierProxyProvider<CatalogModel, CartModel>(
          create: (context) => CartModel(),
          update: (context, catalog, cart) {
            cart.catalog = catalog;
            return cart;
          },
        )
      ],
      child: MaterialApp(
        title: 'Provider',
        theme: appTheme,
        initialRoute: '/',
        routes: {
          // 暫定的にMyCatalogに
          '/': (context) => MyCatalog(),
        },
      ),
    );
  }
}

class MyCatalog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _MyAppBar(),
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => _MyListItem()),
          ),
        ],
      ),
    );
  }
}

class _MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text('Catalog', style: Theme.of(context).textTheme.headline1),
      floating: true,
      actions: [
        IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {
            // todo カート画面に遷移
          },
        ),
      ],
    );
  }
}

class _MyListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final item = CatalogModel().getById(0);

    final textTheme = Theme.of(context).textTheme.headline6;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LimitedBox(
        maxHeight: 48.0,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1.0,
              child: Container(
                color: item.color,
              ),
            ),
            SizedBox(width: 24.0),
            Expanded(child: Text('${item.name}', style: textTheme)),
            SizedBox(width: 24.0),
            _AddButton(item: item),
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final Item item;

  const _AddButton({Key key, @required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isInCart = context.select<CartModel, bool>(
          (cart) => cart.items.contains(item),
    );

    return FlatButton(
      onPressed: isInCart ? null : () {
        final cart = context.read<CartModel>();
        cart.add(item);
      },
      splashColor: Theme
          .of(context)
          .primaryColor,
      child: isInCart ? Icon(Icons.check, semanticLabel: 'ADDED') : Text('ADD'),
    );
  }
}
