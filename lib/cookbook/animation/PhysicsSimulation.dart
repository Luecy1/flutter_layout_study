import 'package:flutter/material.dart';

main() {
  runApp(MaterialApp(
    home: _PhysicsCardDragDemo(),
  ));
}

class _PhysicsCardDragDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}

class _DraggableCard extends StatefulWidget {
  final Widget child;

  _DraggableCard(this.child);

  @override
  __DraggableCardState createState() => __DraggableCardState();
}

class __DraggableCardState extends State<_DraggableCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: widget.child,
    );
  }
}
