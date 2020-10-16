import 'package:flutter/material.dart';

// https://flutter.dev/docs/cookbook/gestures/dismissible
void main() {
  runApp(
    MaterialApp(
      home: _DismissPage(),
    ),
  );
}

class _DismissPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dismiss'),
      ),
      body: _DismissList(),
    );
  }
}

class _DismissList extends StatefulWidget {
  const _DismissList({
    Key key,
  }) : super(key: key);

  @override
  __DismissListState createState() => __DismissListState();
}

class __DismissListState extends State<_DismissList> {
  final _items = List<String>.generate(20, (index) {
    return 'Item $index';
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: _items.length,
      itemBuilder: (context, index) {
        final item = _items[index];

        return Dismissible(
          background: Container(color: Colors.red),
          key: Key(item),
          onDismissed: (direction) {
            setState(() {
              _items.removeAt(index);
            });

            final snackBar = SnackBar(
              content: Text('$item dismissed $direction'),
            );

            Scaffold.of(context).showSnackBar(snackBar);
          },
          child: ListTile(
            title: Text('$item'),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 2.0,
          thickness: 2.0,
        );
      },
    );
  }
}
