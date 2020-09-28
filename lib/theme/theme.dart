import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData.dark().copyWith(
          textTheme: ThemeData.light().textTheme.copyWith(
                headline1: TextStyle(
                  color: Colors.deepOrange,
                  // fontSize: 90.0
                ),
              )),
      home: _ThemePage(),
    ),
  );
}

class _ThemePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            borderText('headline1', textTheme.headline1),
            Divider(),
            borderText('headline2', textTheme.headline2),
            borderText('headline3', textTheme.headline3),
            borderText('headline4', textTheme.headline4),
            borderText('headline5', textTheme.headline5),
            borderText('headline6', textTheme.headline6),
            borderText('subtitle1', textTheme.subtitle1),
            borderText('subtitle2', textTheme.subtitle2),
            borderText('bodyText1', textTheme.bodyText1),
            borderText('bodyText2', textTheme.bodyText2),
            borderText('button', textTheme.button),
            borderText('caption', textTheme.caption),
            Container(
              color: Colors.orangeAccent,
              width: 100.0,
              height: 100.0,
            ),
            borderText('overline', textTheme.overline),
          ],
        ),
      ),
    );
  }

  Widget borderText(String text, TextStyle textStyle) {
    return Container(
      child: Text(text, style: textStyle),
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
    );
  }
}
