import 'dart:math' as math;

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
//          SliverAppBar(
//            title: Text('Title'),
//            expandedHeight: 200.0,
//            flexibleSpace: FlexibleSpaceBar(
//              background: Image.network(
//                'https://2.bp.blogspot.com/-9PMYAvYnmEo/VIKnFsrkabI/AAAAAAAApb0/yrF5PYImbAA/s800/present_open.png',
//                fit: BoxFit.cover,
//              ),
//            ),
//          ),
          makeHeader('1'),
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
    return Colors.accents[index % Colors.accents.length];
  }

  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: Container(
            color: Colors.lightBlue, child: Center(child:
        Text(headerText))),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    @required this.minHeight,
    @required this.maxHeight,
    @required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => math.max(maxHeight, minHeight);

  @override
  Widget build(BuildContext context,
      double shrinkOffset,
      bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}