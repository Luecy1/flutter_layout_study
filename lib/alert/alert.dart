import 'package:flutter/material.dart';

void main() {
  runApp(_MyApp());
}

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'title',
      home: _Page(),
    );
  }
}

class _Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Alert1'),
          onPressed: () {
            onPressAlert1(context);
          },
        ),
      ),
    );
  }

  void onPressAlert1(BuildContext context) async {
    // 選択したときの値をasync awaitで受け取れる
    final dialog = showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Alert Title'),
            content: Text('content'),
            actions: [
              FlatButton(
                child: Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop('value!!!');
                },
              )
            ],
          );
        });

    final result = await dialog;
    print(result);
  }
}
