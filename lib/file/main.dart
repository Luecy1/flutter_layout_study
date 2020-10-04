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
  var _pathList = [""];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('file'),
      ),
      body: ListView.builder(
        itemCount: _pathList.length,
        itemBuilder: (context, index) {
          return buildText(_pathList[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: () {
          _getPath();
        },
      ),
    );
  }

  Text buildText(String text) {
    return Text(
      '$text',
      style: TextStyle(fontSize: 24.0),
    );
  }

  Future<void> _getPath() async {
    final directory = await getApplicationDocumentsDirectory();
    final cacheDir = await getExternalCacheDirectories();

    setState(() {
      _pathList = [
        directory.path,
        ...cacheDir.map((e) => e.path),
      ];
    });
  }
}
