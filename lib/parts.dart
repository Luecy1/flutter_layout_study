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
