import 'dart:convert';

import 'package:twitter/twitter.dart';

import 'secret_key.dart';

void main() async {
  final twitterMediaList = await getTwitterMedia();

  for (var value in twitterMediaList) {
    print(value);
  }
}

Future<List<TwitterMedia>> getTwitterMedia() async {
  final twitter = Twitter(
    API_KEY,
    API_KEY_SECRET,
    ACCESS_TOKEN,
    ACCESS_TOKEN_SECRET,
  );
  final response =
      await twitter.request('GET', 'favorites/list.json?include_entities=true&count=100');
//  final response = await twitter.request('GET', 'statuses/home_timeline.json');

  List<dynamic> jsonResponse = json.decode(response.body);
  var twitterMediaList = <TwitterMedia>[];
  for (var tw in jsonResponse) {
    final extendedEntities = tw['extended_entities'];
    if (extendedEntities != null) {
      final media = extendedEntities['media'] as List<dynamic>;
      if (media != null) {
        for (var me in media) {
          twitterMediaList.add(TwitterMedia(me['media_url_https']));
        }
      }
    }
  }
  twitter.close();

  return twitterMediaList;
}

class TwitterMedia {
  final String mediaUrl;

  TwitterMedia(this.mediaUrl);

  @override
  String toString() {
    return '_twitterMedia{mediaUrl: $mediaUrl}';
  }
}
