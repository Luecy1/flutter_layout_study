// respect https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

import 'package:flutter/material.dart';

const children = [
  const Icon(Icons.star, size: 50),
  const Icon(Icons.star, size: 50),
  const Icon(Icons.star, size: 50),
  const Icon(Icons.star, size: 50),
  const Icon(Icons.star, size: 50),
];

class RowMainAxisAlignment extends StatelessWidget {
  final MainAxisAlignment _mainAxisAlignment;

  RowMainAxisAlignment(this._mainAxisAlignment);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: _mainAxisAlignment,
      children: children,
    );
  }
}

class RowCrossAxisAlignment extends StatelessWidget {
  final CrossAxisAlignment _crossAxisAlignment;

  RowCrossAxisAlignment(this._crossAxisAlignment);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: _crossAxisAlignment,
      children: <Widget>[
        Icon(Icons.star, size: 50),
        Icon(Icons.star, size: 200),
        Icon(Icons.star, size: 50),
      ],
    );
  }
}

class RowMainAxisSize extends StatelessWidget {
  final MainAxisSize _mainAxisSize;

  RowMainAxisSize(this._mainAxisSize);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: _mainAxisSize,
      children: children,
    );
  }
}

class MyBaseline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          'Baseline',
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          'Baseline',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

class IntrinsicWidthBefore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: Text('Short'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('A bit Longer'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('The Longest text button'),
          ),
        ],
      ),
    );
  }
}

class IntrinsicWidthAfter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('Short'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('A bit Longer'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('The Longest text button'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(),
        Banner(
          message: 'topstart',
          location: BannerLocation.topStart,
        ),
        Banner(
          message: 'topend',
          location: BannerLocation.topEnd,
        ),
        Banner(
          message: 'bottomStart',
          location: BannerLocation.bottomStart,
        ),
        Banner(
          message: 'bottomend',
          location: BannerLocation.bottomEnd,
        ),
      ],
    );
  }
}

class MyPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Material(color: Colors.yellowAccent),
        Positioned(
          top: 0,
          left: 0,
          child: Icon(
            Icons.star,
            size: 50,
          ),
        ),
        Positioned(
          top: 340,
          left: 250,
          child: Icon(Icons.call, size: 50),
        ),
      ],
    );
  }
}

class MyExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.red),
          ),
          flex: 3,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.green),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          flex: 1,
        ),
      ],
    );
  }
}

class MySweepGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          gradient: SweepGradient(
            colors: const [
              Colors.blue,
              Colors.green,
              Colors.yellow,
              Colors.red,
              Colors.blue,
            ],
            stops: const [
              0.0,
              0.25,
              0.5,
              0.75,
              1.0,
            ],
          ),
        ),
      ),
    );
  }
}
