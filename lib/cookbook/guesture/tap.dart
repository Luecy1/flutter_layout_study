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
      appBar: AppBar(
        title: Text('tap'),
      ),
      body: _MyGesture(),
    );
  }
}

class _MyGesture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text('tap'));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      onLongPress: () {
        final snackBar = SnackBar(content: Text('long'));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      onDoubleTap: () {
        final snackBar = SnackBar(content: Text('double tap'));
        Scaffold.of(context).showSnackBar(snackBar);
      },
      child: Center(
        child: Container(
          padding: EdgeInsets.all(12.0),
          decoration: BoxDecoration(
            color: Theme.of(context).buttonColor,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Text('My Button'),
        ),
      ),
    );
  }
}
