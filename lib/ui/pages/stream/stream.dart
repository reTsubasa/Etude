import 'package:etude/configs/subscribes.dart';
import 'package:etude/core/network/http.dart';
import 'package:etude/core/utils/rss_parser.dart';
import 'package:flutter/material.dart';
import 'package:webfeed/domain/rss_item.dart';

class EtudeStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("信息流"),
      ),
      body: EtudeStreamPage(),
    );
  }
}

class EtudeStreamPage extends StatefulWidget {
  @override
  _EtudeStreamPageState createState() => _EtudeStreamPageState();
}

class _EtudeStreamPageState extends State<EtudeStreamPage> {
  List<RssItem> streamItems = [];
  @override
  void initState() {
    super.initState();
    var cnbeta_url = SubscribeList.subscribeMap["cnbeta"];
    streamItems = RssParser.parse(cnbeta_url);
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(streamItems.length, (index){
        Text(streamItems[index].title);
      }),
    );
  }
}


