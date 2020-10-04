import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(MaterialApp(
    home: _File(),
  ));
}

class _File extends StatefulWidget {
  @override
  _FileState createState() => _FileState();
}

class _FileState extends State<_File> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('file'),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: getPath(),
            initialData: 'loading',
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              return Text(
                'aaa ${snapshot.data}',
                style: TextStyle(fontSize: 24.0),
              );
            },
          ),
          RaisedButton(
            child: Text('push'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  Future<String> getPath() async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }
}
