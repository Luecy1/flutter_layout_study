import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FractionallySizedBoxPage(),
  ));
}

class FractionallySizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionallySizedBox'),
      ),
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.7,
          child: Container(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
