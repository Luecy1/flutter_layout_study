import 'package:flutter/material.dart';

void main() {
  runApp(_App());
}

class _App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      home: _Page(),
    );
  }
}

class _Page extends StatefulWidget {
  @override
  __PageState createState() => __PageState();
}

class __PageState extends State<_Page> {
  double _sliderValueRed = 20;
  double _sliderValueGreen = 20;
  double _sliderValueBlue = 20;

  @override
  Widget build(BuildContext context) {
    final color2 = Color.fromARGB(0xFF, _sliderValueRed.toInt(),
        _sliderValueGreen.toInt(), _sliderValueBlue.toInt());

    return Scaffold(
      appBar: AppBar(
        title: Text('color'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: color2,
              width: 200.0,
              height: 200.0,
            ),
            Slider(
              activeColor: Colors.red,
              inactiveColor: Colors.red.withOpacity(0.38),
              value: _sliderValueRed,
              min: 0.0,
              max: 255.0,
              label: _sliderValueRed.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValueRed = value;
                });
              },
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.green.withOpacity(0.38),
              value: _sliderValueGreen,
              min: 0.0,
              max: 255.0,
              label: _sliderValueGreen.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValueGreen = value;
                });
              },
            ),
            Slider(
              activeColor: Colors.blue,
              inactiveColor: Colors.blue.withOpacity(0.38),
              value: _sliderValueBlue,
              min: 0.0,
              max: 255.0,
              label: _sliderValueBlue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _sliderValueBlue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
