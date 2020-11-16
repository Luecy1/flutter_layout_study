// https://github.com/flutter/samples/blob/master/provider_shopper/lib/screens/catalog.dart

import 'package:flutter/material.dart';
import 'package:flutter_layout_study/provider/model.dart';
import 'package:flutter_layout_study/provider/theme.dart';

void main() {
  runApp(MaterialApp(
    theme: appTheme,
    home: MyCatalog(),
  ));
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
            _AddButton(),
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: null, child: Text('ADD'));
  }
}