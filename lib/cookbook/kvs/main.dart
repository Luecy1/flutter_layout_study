import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

//todo https://flutter.dev/docs/cookbook/persistence/key-value
void main() {
  runApp(MaterialApp(
    home: _MyKvs(),
  ));
}

class _MyKvs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('key value store'),
      ),
      body: CountUpDown(),
    );
  }
}

class CountUpDown extends StatefulWidget {
  @override
  _CountUpDownState createState() => _CountUpDownState();
}

class _CountUpDownState extends State<CountUpDown> {
  var count = 0;

  @override
  void initState() {
    readCount().then((value) {
      setState(() {
        count = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        RaisedButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            setState(() {
              count--;
            });
            writeCount(count);
          },
        ),
        Text('$count'),
        RaisedButton(
          child: Icon(Icons.arrow_forward),
          onPressed: () {
            setState(() {
              count++;
            });
            writeCount(count);
          },
        ),
      ],
    );
  }
}

void writeCount(int count) async {
  final prefs = await SharedPreferences.getInstance();

  prefs.setInt('counter', count);
  print('write counter=$count');
}

Future<int> readCount() async {
  final prefs = await SharedPreferences.getInstance();
  final count = prefs.getInt('counter');
  print('read counter=$count');
  return count;
}
