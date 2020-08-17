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
    MapEntry("baseline", MyBaseline()),
    MapEntry("CrossAxisAlignment.start", RowCrossAxisAlignment(CrossAxisAlignment.start)),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(layouts[layoutsIndex].key),
          ),
          body: Container(
            color: Colors.yellow,
            child: layouts[layoutsIndex].value,
          ),
        ),
        Positioned(
          bottom: 10,
          left: 10,
          child: FloatingActionButton(
            child: Icon(Icons.navigate_before),
            onPressed: () {
              int newLayoutIndex = layoutsIndex - 1;
              newLayoutIndex %= layouts.length;
              setState(() {
                layoutsIndex = newLayoutIndex;
              });
            },
          ),
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: FloatingActionButton(
            child: Icon(Icons.navigate_next),
            onPressed: () {
              int newLayoutIndex = layoutsIndex + 1;
              newLayoutIndex %= layouts.length;
              setState(() {
                layoutsIndex = newLayoutIndex;
              });
            },
          ),
        ),
      ],
    );
  }
}
