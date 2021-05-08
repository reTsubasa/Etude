import 'package:etude/configs/subscribes.dart';
import 'package:etude/core/network/http.dart';
import 'package:etude/core/utils/rss_parser.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webfeed/domain/rss_item.dart';

class EtudeStream extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("信息流"),
      ),
      body: EtudeStreamPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _launchURL(),
        child: Text("按"),
      ),
    );
  }
}

final _url = "https://www.cnbeta.com/articles/tech/1125247.htm";

void _launchURL() async =>
    await launch(_url, forceWebView: true, enableJavaScript: false);

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
    RssParser.parse(cnbeta_url).then((value) {
      streamItems = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: streamItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1, crossAxisSpacing: 0, childAspectRatio: 10),
        itemBuilder: (ctx, index) {
          return Card(
            child: GestureDetector(
              child: Container(
                child: Text(
                  streamItems[index].title,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(left: 8),
              ),
              onTap: (){
                Navigator.pushNamed(context, "/detail",
                    );
              },
            ),
            shadowColor: Colors.grey.shade800,
            clipBehavior: Clip.hardEdge,
          );
        });
  }
}
