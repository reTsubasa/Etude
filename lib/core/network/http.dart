import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:webfeed/domain/rss_feed.dart';


class HttpRequest  {
  static get(String url) async{
    var resp =  await Dio().get(url);
    var rssFeed = RssFeed.parse(resp.data);
    return rssFeed;
  }

    // var infos = data.findAllElements("item");
    // infos
    //   .map((node) => node.text)
    //   .forEach((element) {print(element);});
    // final myTransformer = Xml2Json();
    // myTransformer.parse(xml_data);
    // var json = myTransformer.toParker();
    // print(json);
}