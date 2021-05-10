import 'package:etude/core/network/rss_request.dart';
import 'package:webfeed/domain/rss_item.dart';

class DetailViewModel {
  List<RssItem> _items = [];

  List<RssItem> get items => _items;

  DetailViewModel(){
    EtudeRssRequest.getRssItems()
        .then((value){
      _items = value;
      notifyListeners();
    });
  }
}

