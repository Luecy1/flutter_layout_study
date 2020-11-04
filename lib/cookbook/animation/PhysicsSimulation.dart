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
      body: _DraggableCard(
        child: FlutterLogo(
          size: 128,
        ),
      ),
    );
  }
}

class _DraggableCard extends StatefulWidget {
  final Widget child;

  _DraggableCard({this.child});

  @override
  __DraggableCardState createState() => __DraggableCardState();
}

class __DraggableCardState extends State<_DraggableCard> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Alignment _dragAlignment = Alignment.center;

  DragUpdateDetails _details;

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Text('dx :${_details?.delta?.dx ?? ""}'),
        GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              _dragAlignment += Alignment(
                details.delta.dx / (size.width / 2),
                details.delta.dy / (size.height / 2),
              );
              // print(_dragAlignment);
              _details = details;
              print('dy :${details.delta.dx}');
            });
          },
          child: Align(
            alignment: _dragAlignment,
            child: Card(
              child: widget.child,
            ),
          ),
        ),
      ],
    );
  }
}
