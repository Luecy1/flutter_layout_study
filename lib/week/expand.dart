import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: _MyPage(),
  ));
}

class _MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('expand')),
      body: Row(
        children: [
          expandedBox(Colors.purple, 1),
          expandedBox(Colors.orange, 2),
          expandedBox(Colors.green, 3),
        ],
      ),
    );
  }

  Widget expandedBox(Color color, int flex) {
    return Expanded(
      flex: flex,
      child: Container(
        color: color,
      ),
    );
  }
}
