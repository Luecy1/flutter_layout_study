import 'package:flutter/material.dart';
import 'package:flutter_layout_study/parts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: NewWidget(),
    );
  }
}

class NewWidget extends StatefulWidget {
  @override
  NewWidgetState createState() => NewWidgetState();
}

class NewWidgetState extends State<NewWidget> {
  int layoutsIndex = 0;

  final layouts = [
    MapEntry("MainAxisAlignment.start", RowMainAxisAlignment(MainAxisAlignment.start)),
    MapEntry("MainAxisAlignment.end", RowMainAxisAlignment(MainAxisAlignment.end)),
    MapEntry(
        "MainAxisAlignment.spaceBetween", RowMainAxisAlignment(MainAxisAlignment.spaceBetween)),
    MapEntry("MainAxisAlignment.spaceAround", RowMainAxisAlignment(MainAxisAlignment.spaceAround)),
    MapEntry("MainAxisAlignment.spaceEvenly", RowMainAxisAlignment(MainAxisAlignment.spaceEvenly)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(layouts[layoutsIndex].key),
      ),
      body: Container(
        color: Colors.yellow,
        child: layouts[layoutsIndex].value,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          int newLayoutIndex = layoutsIndex + 1;
          newLayoutIndex %= layouts.length;
          setState(() {
            layoutsIndex = newLayoutIndex;
          });
        },
      ),
    );
  }
}
