import 'package:flutter/material.dart';

final _theme = ThemeData(
  fontFamily: 'Raleway',
);

main() {
  runApp(MaterialApp(
    home: _FontPage(),
  ));
}

class _FontPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Theme.of(context).textTheme.bodyText1.fontFamily);

    return Scaffold(
      appBar: AppBar(
        title: Text('font'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'Raleway',
              style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 32.0,
              ),
            ),
            Text(
              'Roboto',
              style: TextStyle(
                fontSize: 32.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
