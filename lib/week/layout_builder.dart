import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: _LayoutBuilderPage(),
  ));
}

class _LayoutBuilderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Text(
            'constraints.maxWidth ${constraints.maxWidth}',
            style: TextStyle(
              fontSize: 20.0,
            ),
          );
        },
      ),
    );
  }
}
