import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: _TablePage(),
  ));
}

class _TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('table'),
      ),
      body: Container(
        child: Table(
          border: TableBorder.all(),
          defaultVerticalAlignment: TableCellVerticalAlignment.top,
          children: [
            TableRow(children: [
              AspectRatio(
                aspectRatio: 1.0,
                child: Text('green\ngreen'),
              ),
              Container(
                color: Colors.orangeAccent,
                child: Text('orangeAccent'),
              ),
            ]),
            TableRow(children: [
              Container(
                color: Colors.orangeAccent,
                child: Text('orangeAccent'),
              ),
              Container(
                color: Colors.green,
                child: Text('green'),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
