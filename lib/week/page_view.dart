import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: _PageViewPage()));
}

class _PageViewPage extends StatefulWidget {
  @override
  __PageViewPageState createState() => __PageViewPageState();
}

class __PageViewPageState extends State<_PageViewPage> {
  PageController _pageController;

  int _index = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('pageview'),
      ),
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.0 / 1.0,
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _index = index;
                });
              },
              children: [
                _PinkPage(),
                _BluePage(),
                _GreenPage(),
              ],
            ),
          ),
          Text('hoge $_index'),
        ],
      ),
    );
  }
}

class _PinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
    );
  }
}

class _BluePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
    );
  }
}

class _GreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
    );
  }
}
