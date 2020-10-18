import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: _Drill2(),
  ));
}

class _Drill2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('app bar')),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.orange,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BoxWidget(
              color: Colors.red,
            ),
            SizedBox(
              height: 20.0,
            ),
            BoxWidget(
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final Color color;

  const BoxWidget({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: color,
    );
  }
}
