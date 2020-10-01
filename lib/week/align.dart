import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: _AlignPage(),
  ));
}

class _AlignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: FlutterLogo(),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: FlutterLogo(),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FlutterLogo(),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: FlutterLogo(),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: FlutterLogo(),
          ),
          Align(
            alignment: Alignment.topRight,
            child: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}
