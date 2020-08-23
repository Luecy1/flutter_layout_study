// respect https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

import 'dart:math';

import 'package:flutter/material.dart';

const children = [
  const Icon(Icons.star, size: 50),
  const Icon(Icons.star, size: 50),
  const Icon(Icons.star, size: 50),
  const Icon(Icons.star, size: 50),
  const Icon(Icons.star, size: 50),
];

class RowMainAxisAlignment extends StatelessWidget {
  final MainAxisAlignment _mainAxisAlignment;

  RowMainAxisAlignment(this._mainAxisAlignment);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: _mainAxisAlignment,
      children: children,
    );
  }
}

class RowCrossAxisAlignment extends StatelessWidget {
  final CrossAxisAlignment _crossAxisAlignment;

  RowCrossAxisAlignment(this._crossAxisAlignment);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: _crossAxisAlignment,
      children: <Widget>[
        Icon(Icons.star, size: 50),
        Icon(Icons.star, size: 200),
        Icon(Icons.star, size: 50),
      ],
    );
  }
}

class RowMainAxisSize extends StatelessWidget {
  final MainAxisSize _mainAxisSize;

  RowMainAxisSize(this._mainAxisSize);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: _mainAxisSize,
      children: children,
    );
  }
}

class MyBaseline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: <Widget>[
        Text(
          'Baseline',
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          'Baseline',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

class IntrinsicWidthBefore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: Text('Short'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('A bit Longer'),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('The Longest text button'),
          ),
        ],
      ),
    );
  }
}

class IntrinsicWidthAfter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: IntrinsicWidth(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RaisedButton(
              onPressed: () {},
              child: Text('Short'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('A bit Longer'),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('The Longest text button'),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(),
        Banner(
          message: 'topstart',
          location: BannerLocation.topStart,
        ),
        Banner(
          message: 'topend',
          location: BannerLocation.topEnd,
        ),
        Banner(
          message: 'bottomStart',
          location: BannerLocation.bottomStart,
        ),
        Banner(
          message: 'bottomend',
          location: BannerLocation.bottomEnd,
        ),
      ],
    );
  }
}

class MyPositioned extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Material(color: Colors.yellowAccent),
        Positioned(
          top: 0,
          left: 0,
          child: Icon(
            Icons.star,
            size: 50,
          ),
        ),
        Positioned(
          top: 340,
          left: 250,
          child: Icon(Icons.call, size: 50),
        ),
      ],
    );
  }
}

class MyExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.red),
          ),
          flex: 3,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.green),
          ),
          flex: 2,
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(color: Colors.blue),
          ),
          flex: 1,
        ),
      ],
    );
  }
}

class MyConstrainedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: const Text('hello'),
      color: Colors.yellow,
    );
  }
}

class MyConstrainedBox2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(),
      child: const Card(
        child: const Text('Hello World!'),
        color: Colors.yellow,
      ),
    );
  }
}

class MyConstrainedBoxExpand extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.expand(height: 300),
      child: const Card(
        child: const Text('Hello World!'),
        color: Colors.yellow,
      ),
    );
  }
}

class MyAlign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RaisedButton(
          onPressed: () {},
          child: const Text('Button'),
        )
      ],
    );
  }
}

class MyAlign2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          child: RaisedButton(
            onPressed: () {},
            child: const Text('Button'),
          ),
        )
      ],
    );
  }
}

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
      child: Text('Hi'),
    );
  }
}

class MyContainer2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.yellowAccent,
      child: Text('Hi'),
    );
  }
}

class MyContainer3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.yellowAccent),
      child: Text('Hi'),
    );
  }
}

class MyContainer4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.yellowAccent),
      foregroundDecoration: BoxDecoration(color: Colors.red.withOpacity(0.5)),
      child: Text('Hi'),
    );
  }
}

class MyTransform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      transform: Matrix4.rotationZ(pi / 4),
      decoration: BoxDecoration(color: Colors.yellowAccent),
      child: Text(
        "Hi",
        textAlign: TextAlign.center,
      ),
    );
  }
}

class MyBoxDecoration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: NetworkImage('https://flutter.io/images/catalog-widget-placeholder.png'),
          ),
        ),
      ),
    );
  }
}

class MyBorder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.black, width: 3),
        ),
      ),
    );
  }
}

class MyBorderRadius extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(color: Colors.black, width: 3),
          borderRadius: BorderRadius.all(Radius.circular(18)),
        ),
      ),
    );
  }
}

class MyBoxShape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.yellow,
        shape: BoxShape.circle,
      ),
    ));
  }
}

class MyBoxShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.yellow,
          boxShadow: const [
            BoxShadow(blurRadius: 10),
            BoxShadow(blurRadius: 20),
            BoxShadow(blurRadius: 30),
          ],
        ),
      ),
    );
  }
}

class MyGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: const [
            Colors.red,
            Colors.blue,
          ],
        )),
      ),
    );
  }
}

class MyRadialGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            gradient: RadialGradient(
          colors: const [
            Colors.yellow,
            Colors.blue,
          ],
          stops: const [0.4, 1.0],
        )),
      ),
    );
  }
}

class MySweepGradient extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          gradient: SweepGradient(
            colors: const [
              Colors.blue,
              Colors.green,
              Colors.yellow,
              Colors.red,
              Colors.blue,
            ],
            stops: const [
              0.0,
              0.25,
              0.5,
              0.75,
              1.0,
            ],
          ),
        ),
      ),
    );
  }
}

class MyBackgroundBlendMode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        foregroundDecoration: BoxDecoration(
          backgroundBlendMode: BlendMode.exclusion,
          gradient: LinearGradient(
            colors: const [
              Colors.red,
              Colors.blue,
            ],
          ),
        ),
        child: Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png',
        ),
      ),
    );
  }
}
