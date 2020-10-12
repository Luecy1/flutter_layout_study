import 'package:flutter/material.dart';

//todo https://flutter.dev/docs/cookbook/persistence/key-value
void main() {
  runApp(MaterialApp(
    home: _MyKvs(),
  ));
}

class _MyKvs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('key value store'),
      ),
      body: Center(
        child: Text('hello'),
      ),
    );
  }
}
