import 'package:http/http.dart' as http;
import 'package:twitter_api/twitter_api.dart';

import 'secret_key.dart';

Future<void> main() async {
  print('hello');

  final twitter = twitterApi(
    consumerKey: APIKey,
    consumerSecret: APIKeySecret,
    token: AccessToken,
    tokenSecret: AccessTokenSecret,
  );

  final response =
      (await twitter.getTwitterRequest('GET', 'statuses/home_timeline.json') as http.Response);

  print(response.body);
}
