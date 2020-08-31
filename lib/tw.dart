import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('card')),
        body: TwitterCard(),
      ),
    ),
  );
}

class TwitterCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add),
          ),
          Text(
            'テキスト',
            style: TextStyle(fontSize: 22.0),
          )
        ],
      ),
    );
  }
}
