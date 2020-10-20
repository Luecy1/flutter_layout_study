import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: _Drill5Page()));

class _Drill5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('clip'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25.0),
          child: SizedBox(
            height: 200.0,
            width: 200.0,
            child: Image(
              image: AssetImage('assets/aozora.png'),
              fit: BoxFit.fitHeight,
            ),
          ),
        ),
      ),
    );
  }
}
