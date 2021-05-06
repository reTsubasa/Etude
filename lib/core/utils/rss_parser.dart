import 'package:etude/core/network/http.dart';
import 'package:webfeed/domain/rss_feed.dart';
import 'package:webfeed/domain/rss_item.dart';


class RssParser{
  static  parse(url)  {
    var data = HttpRequest.get(url);
    return data.items;
  }
}