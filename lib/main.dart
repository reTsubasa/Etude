import 'package:flutter/material.dart';
import 'ui/theme/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: EtudeTheme.light,
      darkTheme: EtudeTheme.dark,
      title: "Etude",
      home: Scaffold(
        appBar: AppBar(),
        body: Text("111"),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.airplay),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
