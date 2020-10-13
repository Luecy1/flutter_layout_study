// https://flutter.dev/docs/cookbook/forms/retrieve-input
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: _MyForm(),
    ),
  );
}

class _MyForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('form'),
      ),
      body: MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final _myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _myController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RaisedButton(
              child: Text('push!'),
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }
}
