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
