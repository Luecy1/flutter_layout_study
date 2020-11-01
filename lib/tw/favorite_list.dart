import 'package:flutter/material.dart';
import 'package:flutter_layout_study/tw/tw_access.dart';

void main() {
  runApp(MaterialApp(
    home: _FavoritePage(),
  ));
}

class _FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('tw'),
      ),
      body: FutureBuilder<List<TwitterMedia>>(
        future: getTwitterMedia(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return _buildFavoriteList(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  Widget _buildFavoriteList(List<TwitterMedia> twitterMedia) {
    return GridView.builder(
      itemCount: twitterMedia.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        final url = twitterMedia[index].mediaUrl;
        return GestureDetector(
          child: Image.network(url),
          onTap: () {
            openDialog(context, url);
          },
        );
      },
    );
  }

  void openDialog(BuildContext context, String url) {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          children: [
            Image.network(url),
          ],
        );
      },
    );
  }
}
