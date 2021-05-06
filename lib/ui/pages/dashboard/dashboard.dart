import 'package:etude/ui/pages/dashboard/navi_items.dart';
import 'package:flutter/material.dart';

class EtudeDashboard extends StatefulWidget {
  static const String routeName = "/dashboard";
  @override
  _EtudeDashboardState createState() => _EtudeDashboardState();
}

class _EtudeDashboardState extends State<EtudeDashboard> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _index,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _index,
        onTap: (index){
          setState(() {
            _index = index;
          });
        },
      ),
    );
  }
}
