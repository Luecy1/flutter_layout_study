import 'package:flutter/material.dart';

// https://note.com/mukae9/n/n5263ec8ebeb1
void main() {
  runApp(MaterialApp(
    home: _DrillPage(),
  ));
}

class _DrillPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drill'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BoxWidget(
                color: Colors.black,
              ),
              BoxWidget(
                color: Colors.black,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BoxWidget(
                color: Colors.red,
              ),
              BoxWidget(
                color: Colors.red,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class BoxWidget extends StatelessWidget {
  final Color color;

  const BoxWidget({Key key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: color,
    );
  }
}
