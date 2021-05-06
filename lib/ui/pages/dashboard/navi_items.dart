import 'package:etude/ui/pages/settings/setting.dart';
import 'package:etude/ui/pages/stream/stream.dart';
import 'package:flutter/material.dart';

final List<Widget> pages = [
  EtudeStream(),
  EtudeSettings(),
];
final List<BottomNavigationBarItem> items = [
  BottomNavigationBarItem(icon: Icon(Icons.fullscreen),label: "全屏"),
  BottomNavigationBarItem(icon: Icon(Icons.settings),label: "设置"),
];