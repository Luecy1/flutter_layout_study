import 'package:flutter/material.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'banner',
      home: _MyPage(),
    );
  }
}

class _MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Center(
          child: MaterialBanner(
            content: const Text('Error message text'),
            leading: CircleAvatar(child: Icon(Icons.delete)),
            actions: [
              FlatButton(
                child: const Text('ACTION 1'),
                onPressed: () {},
              ),
              FlatButton(
                child: const Text('ACTION 2'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
