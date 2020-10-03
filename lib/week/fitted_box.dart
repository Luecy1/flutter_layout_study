import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: FittedBoxPage(),
  ));
}

class FittedBoxPage extends StatefulWidget {
  @override
  _FittedBoxPageState createState() => _FittedBoxPageState();
}

class _FittedBoxPageState extends State<FittedBoxPage> {
  final boxFitList = BoxFit.values;

  var boxFitIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('fittedbox')),
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.black26,
              width: 200.0,
              height: 200.0,
              child: FittedBox(
                fit: boxFitList[boxFitIndex],
                child: Container(
                    color: Colors.teal,
                    width: 100.0,
                    height: 50.0,
                    child: Center(
                      child: Text('${boxFitList[boxFitIndex].toString()}',
                          style: TextStyle(color: Colors.white)),
                    )),
              ),
            ),
            RaisedButton(
              child: Text('tap'),
              onPressed: () {
                var newBoxFitIndex = (boxFitIndex + 1) % boxFitList.length;
                setState(() {
                  boxFitIndex = newBoxFitIndex;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
