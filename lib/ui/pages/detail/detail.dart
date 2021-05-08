import 'package:flutter/material.dart';

class EtudeDetail extends StatefulWidget {
  static const String routeName = "/detail";
  @override
  _EtudeDetailState createState() => _EtudeDetailState();
}

class _EtudeDetailState extends State<EtudeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
      ),
      body: Center(
        child: Text("title"),
      ),
    );
  }
}
