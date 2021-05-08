import 'package:etude/core/network/rss_request.dart';
import 'package:etude/core/viewmodel/rss_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';

void main() {

  runApp(ChangeNotifierProvider(
    create: (ctx)=>RssViewModel(),
    child: MyApp(),
  ));
}
