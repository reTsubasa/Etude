import 'package:etude/ui/pages/dashboard/dashboard.dart';
import 'package:flutter/material.dart';

class EtudeRouter {
  static final String initialRoute = EtudeDashboard.routeName;
  static final Map<String,WidgetBuilder> routes = {
    EtudeDashboard.routeName:(ctx)=> EtudeDashboard(),
  };
  //todo return a [Route]
  static final RouteFactory generateRoute = (settings){
    return null;
  };
  //todo return a unknow
  static final RouteFactory unknowRoute = (settings){
    return null;
  };

}
