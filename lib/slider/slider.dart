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
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('color'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.yellow,
              width: 200.0,
              height: 200.0,
            ),
            Slider(
              activeColor: Colors.red,
              inactiveColor: Colors.red.withOpacity(0.38),
              value: _currentSliderValue,
              min: 0.0,
              max: 100.0,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Slider(
              activeColor: Colors.green,
              inactiveColor: Colors.green.withOpacity(0.38),
              value: _currentSliderValue,
              min: 0.0,
              max: 100.0,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Slider(
              activeColor: Colors.blue,
              inactiveColor: Colors.blue.withOpacity(0.38),
              value: _currentSliderValue,
              min: 0.0,
              max: 100.0,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
