import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// https://flutter.dev/docs/cookbook/forms/text-input
void main() {
  runApp(
    MaterialApp(
      home: _TextFiled(),
    ),
  );
}

class _TextFiled extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text filed'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter a search term',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
