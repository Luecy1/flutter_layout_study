import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: _MyCustomForm(),
  ));
}

class _MyCustomForm extends StatefulWidget {
  @override
  __MyCustomFormState createState() => __MyCustomFormState();
}

class __MyCustomFormState extends State<_MyCustomForm> {
  final _myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _myController.addListener(() => _printLatestValue());
  }

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('text'),
      ),
      body: Container(
        child: TextFormField(
          controller: _myController,
        ),
      ),
    );
  }

  _printLatestValue() {
    print('text field :${_myController.text}');
  }
}
