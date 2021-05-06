import 'package:etude/ui/theme/typography.dart';
import 'package:flutter/material.dart';

class EtudeTheme {
  static final ThemeData light = ThemeData(
    primarySwatch: Colors.green,
    // primaryColor: Colors.green.shade50,
    // accentColor: Colors.indigoAccent.shade100,
    textTheme: EtudeTypography.textTheme,
    // canvasColor: Colors.white10,
  );

  static final ThemeData dark = ThemeData(
      primarySwatch: Colors.yellow,
      primaryColor: Colors.white,
      accentColor: Colors.deepPurpleAccent,
      textTheme: EtudeTypography.textTheme);
}
