import 'package:flutter/material.dart';
import 'ui/theme/theme.dart';
import 'package:etude/core/routers/router.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title
      title: "Etude",
      //theme
      theme: EtudeTheme.light,
      // darkTheme: EtudeTheme.dark,
      //route
      initialRoute: EtudeRouter.initialRoute,
      routes: EtudeRouter.routes,
      onGenerateRoute: EtudeRouter.generateRoute,
      onUnknownRoute: EtudeRouter.unknowRoute,
    );
  }
}
