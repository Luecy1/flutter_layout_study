import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: _FadeInOutPage(),
    ),
  );
}

class _FadeInOutPage extends StatefulWidget {
  @override
  __FadeInOutPageState createState() => __FadeInOutPageState();
}

class __FadeInOutPageState extends State<_FadeInOutPage> {
  bool _visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fade animation'),
      ),
      body: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: Duration(milliseconds: 500),
        child: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _visible = !_visible;
          });
        },
        tooltip: 'Toggle Opacity',
        child: Icon(Icons.flip),
      ),
    );
  }
}
