import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart' as path;

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
      body: Column(
        children: [
          Expanded(
            child: ListView.separated(
              itemCount: _pathList.length,
              itemBuilder: (context, index) {
                return buildText(_pathList[index]);
              },
              separatorBuilder: (context, index) =>
                  Divider(
                    color: Colors.black,
                  ),
            ),
          ),
          RaisedButton(
            child: Text('push'),
            onPressed: () {
              _getPath();
            },
          ),
        ],
      ),
//      floatingActionButton: FloatingActionButton(
//        child: Icon(Icons.play_arrow),
//        onPressed: () {
//          _getPath();
//        },
//      ),
    );
  }

  Text buildText(String text) {
    return Text(
      '$text',
      style: TextStyle(fontSize: 24.0),
    );
  }

  Future<void> _getPath() async {
    final directory = await path.getApplicationDocumentsDirectory();
    final cacheDir = await path.getExternalCacheDirectories();
//    final libDir = await path.getLibraryDirectory();
    final tepDir = await path.getTemporaryDirectory();
//    final downloadDir = await path.getDownloadsDirectory();

    setState(() {
      _pathList = [
        'ApplicationDocumentsDirectory',
        directory.path,
        '',
        'ExternalCacheDirectories',
        ...cacheDir.map((e) => e.path),
//        '',
//        'LibraryDirectory',
//        libDir.path,
        '',
        'TemporaryDirectory',
        tepDir.path,
//        '',
//        'DownloadsDirectory',
//        downloadDir.path,
      ];
    });
  }

  Future<File> _writeCounter(int counter) async {
  }
}
