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
      home: MyPage(),
    );
  }
}

class NewWidget extends StatefulWidget {
  @override
  NewWidgetState createState() => NewWidgetState();
}

final layouts = [
  MapEntry("MainAxisAlignment.start", RowMainAxisAlignment(MainAxisAlignment.start)),
  MapEntry("MainAxisAlignment.end", RowMainAxisAlignment(MainAxisAlignment.end)),
  MapEntry("MainAxisAlignment.spaceBetween", RowMainAxisAlignment(MainAxisAlignment.spaceBetween)),
  MapEntry("MainAxisAlignment.spaceAround", RowMainAxisAlignment(MainAxisAlignment.spaceAround)),
  MapEntry("MainAxisAlignment.spaceEvenly", RowMainAxisAlignment(MainAxisAlignment.spaceEvenly)),
  MapEntry("baseline", MyBaseline()),
  MapEntry("CrossAxisAlignment.start", RowCrossAxisAlignment(CrossAxisAlignment.start)),
  MapEntry("CrossAxisAlignment.center", RowCrossAxisAlignment(CrossAxisAlignment.center)),
  MapEntry("CrossAxisAlignment.end", RowCrossAxisAlignment(CrossAxisAlignment.end)),
  MapEntry("CrossAxisAlignment.stretch", RowCrossAxisAlignment(CrossAxisAlignment.stretch)),
  MapEntry("MainAxisSize.max", RowMainAxisSize(MainAxisSize.max)),
  MapEntry("MainAxisSize.min", RowMainAxisSize(MainAxisSize.min)),
  MapEntry("IntrinsicWidthBefore", IntrinsicWidthBefore()),
  MapEntry("IntrinsicWidthAfter", IntrinsicWidthAfter()),
  MapEntry("Stack", MyStack()),
  MapEntry("MyPositioned", MyPositioned()),
  MapEntry("MyExpanded", MyExpanded()),
  MapEntry("MyConstrainedBox", MyConstrainedBox()),
  MapEntry("MyConstrainedBox2", MyConstrainedBox2()),
  MapEntry("MyConstrainedBoxExpand", MyConstrainedBoxExpand()),
  MapEntry("MyAlign", MyAlign()),
  MapEntry("MyAlign2", MyAlign2()),
  MapEntry("MyContainer", MyContainer()),
  MapEntry("MyContainer2", MyContainer2()),
  MapEntry("MyContainer3", MyContainer3()),
  MapEntry("MyContainer4", MyContainer4()),
  MapEntry("MyTransform", MyTransform()),
  MapEntry("MyBoxDecoration", MyBoxDecoration()),
  MapEntry("MyBorder", MyBorder()),
  MapEntry("MyBorderRadius", MyBorderRadius()),
  MapEntry("MyBoxShape", MyBoxShape()),
  MapEntry("MyBoxShadow", MyBoxShadow()),
  MapEntry("MyGradient", MyGradient()),
  MapEntry("MyRadialGradient", MyRadialGradient()),
  MapEntry("MySweepGradient", MySweepGradient()),
  MapEntry("MyBackgroundBlendMode", MyBackgroundBlendMode()),
  MapEntry("MyMaterial", MyMaterial()),
  MapEntry("MySliverFillRemaining", MySliverFillRemaining()),
  MapEntry("MySliverFillRemaining2", MySliverFillRemaining2()),
  MapEntry("MySizedBox", MySizedBox()),
  MapEntry("MySizedBox2", MySizedBox2()),
];

class NewWidgetState extends State<NewWidget> {
  int layoutsIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text('${layouts[layoutsIndex].key} ${layoutsIndex.toString()}'),
          ),
          body: Container(
            color: (0 <= layoutsIndex && layoutsIndex <= 11) ? Colors.yellow : Colors.white,
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

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('layout'),
      ),
      body: ListView.builder(
        itemCount: layouts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(layouts[index].key),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return SkeletonPage(layouts[index]);
              }));
            },
          );
        },
      ),
    );
  }
}

class SkeletonPage extends StatelessWidget {
  final MapEntry<String, Widget> innerWidget;

  SkeletonPage(this.innerWidget);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${innerWidget.key}'),
      ),
      body: Container(
        child: innerWidget.value,
      ),
    );
  }
}
