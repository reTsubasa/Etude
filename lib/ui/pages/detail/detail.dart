import 'package:etude/core/network/http.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:webfeed/domain/rss_item.dart';

class EtudeDetail extends StatefulWidget {
  static const String routeName = "/detail";

  @override
  _EtudeDetailState createState() => _EtudeDetailState();
}

class _EtudeDetailState extends State<EtudeDetail> {
  @override
  Widget build(BuildContext context) {
    final RssItem _item = ModalRoute.of(context).settings.arguments;
    return FutureBuilder(
      future: HttpRequest.get(_item.link),
      builder: (ctx, snapshot) {
        if (!snapshot.hasData)
          return Center(child: CircularProgressIndicator());
        final _dom = parse(snapshot.data);
        // final first =
        //     _dom.getElementsByClassName("article-summary")[0].children[1].text;
        // final second = _dom
        //     .getElementsByClassName("article-content")[0]
        //     .getElementsByTagName("p img");
        // final img = _dom.getElementsByTagName("p");
        //


        // return Scaffold(
        //     appBar: AppBar(
        //       title: Text(_item.title),
        //     ),
        //     body: SingleChildScrollView(
        //         child: Column(
        //             children: List.generate(
        //                 second.length,
        //                 (index) => Container(
        //                   margin: EdgeInsets.all(8),
        //                     child: Text(second[index].text.trim(),
        //                         style:
        //                             Theme.of(context).textTheme.bodyText1))))));
        return Text("11");
      },
    );
  }
}
