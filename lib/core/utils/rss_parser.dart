import 'package:etude/core/network/http.dart';
import 'package:webfeed/domain/rss_feed.dart';
import 'package:webfeed/domain/rss_item.dart';


class RssParser{


  static Future<List<RssItem>> parse(url) async {
    RssFeed feed;
    RssItem item;
    var data = await HttpRequest.get(url);
    feed = RssFeed.parse(data);
    return feed.items;

  }
}