import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: _GesturePage(),
  ));
}

class _GesturePage extends StatefulWidget {
  @override
  _GesturePageState createState() => _GesturePageState();
}

class _GesturePageState extends State<_GesturePage> {
  Offset _offset = Offset(10, 10);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Stack(
        children: [
          Positioned(
            left: _offset.dx,
            top: _offset.dy,
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  _offset = Offset(_offset.dx + details.delta.dx, _offset.dy + details.delta.dy);
                });
              },
              child: Container(
                color: Colors.lightGreen,
                width: 100.0,
                height: 100.0,
                child: Center(
                  child: Text('Pan \n '
                      'x:${_offset.dx.toInt()}'
                      'y:${_offset.dy.toInt()}'),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
