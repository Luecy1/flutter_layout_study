import 'dart:math';

import 'package:flutter/material.dart';

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
