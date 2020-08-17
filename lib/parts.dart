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
