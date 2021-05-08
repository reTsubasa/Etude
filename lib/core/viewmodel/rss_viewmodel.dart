import 'package:etude/core/network/rss_request.dart';
import 'package:flutter/material.dart';
import 'package:webfeed/domain/rss_item.dart';

class RssViewModel extends ChangeNotifier{
  List<RssItem> _items = [];

  List<RssItem> get items => _items;

  RssViewModel(){
    EtudeRssRequest.getRssItems("https://www.cnbeta.com/backend.php")
        .then((value){
          _items = value;
          notifyListeners();
    });
  }
}