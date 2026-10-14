import 'package:flutter/material.dart';
import 'package:rpl2/gridview/GridView.dart';
import 'package:rpl2/pages/about_page.dart';
import 'package:rpl2/pages/home_page.dart';
import 'package:rpl2/listview/ListView.dart';

class AppRoutes {
  static const home = '/';
  static const about = '/about';
  static const list_basic = '/list_basic';
  static const grid_basic = '/grid_basic';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => HomePage(),
    about: (context) => AboutPage(),
    list_basic: (context) => ListViewBasic(),
    grid_basic: (context) => GridViewBasic(),
  };
}
