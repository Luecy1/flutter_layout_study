import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'wrap',
    home: WrapPage(),
  ));
}

class WrapPage extends StatefulWidget {
  @override
  _WrapPageState createState() => _WrapPageState();
}

class _WrapPageState extends State<WrapPage> {
  var aliment = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wrap'),
      ),
      body: Center(
        child: Column(
          children: [
            Wrap(
              alignment: WrapAlignment.values[aliment],
              spacing: 8.0, // gap between adjacent chips
              runSpacing: 4.0, // gap between lines
              children: <Widget>[
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('AH')),
                  label: Text('Hamilton'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('ML')),
                  label: Text('Lafayette'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('HM')),
                  label: Text('Mulligan'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('JL')),
                  label: Text('Laurens'),
                ),
                Chip(
                  avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: Text('JL')),
                  label: Text('Laurens'),
                ),
              ],
            ),
            RaisedButton(
              child: Text('tap!'),
              onPressed: () {
                changeAliment();
              },
            ),
          ],
        ),
      ),
    );
  }

  void changeAliment() {
    final length = WrapAlignment.values.length;
    setState(() {
      aliment++;
      aliment = aliment % length;
      print(WrapAlignment.values[aliment]);
    });
  }
}
