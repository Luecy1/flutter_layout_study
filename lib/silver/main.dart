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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text('Title'),
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://www.saenai.tv/images/special/wpicon/08/icon_1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 100,
                  color: _getColor(index),
                  child: Text(
                    '$index',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                );
              },
              childCount: 100,
            ),
          ),
        ],
      ),
    );
  }

  Color _getColor(int index) {
    // final colors = [
    //   Colors.red,
    //   Colors.yellow,
    // ];
    // Colors.accents

    return Colors.accents[index % Colors.accents.length];
  }
}
