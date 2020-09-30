import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'wrap',
    home: WrapPage(),
  ));
}

class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hoge'),
      ),
      body: Center(
        child: Text('main1'),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Text('hoge'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
