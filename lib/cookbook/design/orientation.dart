import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: _OrientationPage(),
  ));
}

class _OrientationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('orientation'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        padding: EdgeInsets.all(8.0),
        children: List.generate(20, (index) {
          return Container(
            color: Colors.blue,
          );
        }),
      ),
    );
  }
}
