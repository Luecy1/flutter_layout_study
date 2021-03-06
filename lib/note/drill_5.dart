import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: _Drill5Page()));

class _Drill5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('clip'),
      ),
      body: Center(
        child: Container(
          height: 180.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(25.0),
                child: AspectRatio(
                  aspectRatio: 4.0 / 5.0,
                  child: Image(
                    image: AssetImage('assets/aozora.png'),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'hoge',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    Row(
                      children: [
                        Icon(Icons.home),
                        Text('株式会社hoge'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.account_circle),
                        Text('役職'),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.headset),
                        Text('趣味'),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
