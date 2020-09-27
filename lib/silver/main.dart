import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'test',
    home: SilverListPage(),
  ));
}

class SilverListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sliver'),
      ),
      body: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Text('$index');
            },
            childCount: 100,
          ),
        ),
      ]),
    );
  }
}
