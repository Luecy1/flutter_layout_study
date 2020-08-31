import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(title: Text('hoge')),
      body: MyCard(),
    ),
  ));
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '2020/08/30 10:00 - 12:00',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text('セッションタイトル'),
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24.0,
                        height: 24.0,
                        margin: EdgeInsets.only(right: 8.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://1.bp.blogspot.com/-TKQh5HtoA30/XWS5WYJUVoI/AAAAAAABURI/jzOh2yhcRkUFJWYeyDUEZNTZi5JOjQVjgCLcBGAs/s1600/birthday_party_sunglass.png',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Expanded(
                        child: Text('トピックネーム'),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
