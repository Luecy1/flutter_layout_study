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
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 3,
            mainAxisSpacing: 8.0,
            crossAxisSpacing: 8.0,
            padding: EdgeInsets.all(8.0),
            children: buildBox(),
          );
        },
      ),
    );
  }

  List<Widget> buildBox() {
    return List.generate(20, (index) => Container(color: Colors.blue));
  }
}
