import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold),
        ),
      ),
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
      color: Colors.yellow,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.add),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('テキスト', style: Theme.of(context).textTheme.headline1),
              Text('サブテキスト', style: Theme.of(context).textTheme.bodyText1),
            ],
          )
        ],
      ),
    );
  }
}
