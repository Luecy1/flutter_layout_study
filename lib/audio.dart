import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Audio',
      home: _AudioPage(),
    ),
  );
}

class _AudioPage extends StatelessWidget {
  final audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: play,
          child: Text('tap'),
        ),
      ),
    );
  }

  play() async {
    int result = await audioPlayer.play(
        'https://file.chobit.cc/contents/2007/b5fgzdu0zzcowccco04owc48k/b5fgzdu0zzcowccco04owc48k_001.m4a');
    if (result == 1) {
      // success
      print('success');
    } else {
      print(' error $result');
    }
  }
}
