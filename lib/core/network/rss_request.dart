import 'package:etude/core/network/http.dart';
import 'package:webfeed/domain/rss_feed.dart';
import 'package:webfeed/domain/rss_item.dart';

class EtudeRssRequest{
  static Future<List<RssItem>> getRssItems(url) async {
    // send http request
    String data = await HttpRequest.get(url);
    //parse rss data
    RssFeed feed = RssFeed.parse(data);
    //return feed items
    return feed.items;

  }
}
