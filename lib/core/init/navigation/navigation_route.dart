import '../../../features/tabbar/view/tabbar_view.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Scaffold;

import '../../../main.dart';

class NavigationRoute {
  static Route<CupertinoPageRoute> generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments; //argumanlar

    switch (settings.name) {
      case MyApp.path:
        return CupertinoPageRoute(builder: (_) => const MyApp());
      case TabbarView.path:
        return CupertinoPageRoute(builder: (_) => TabbarView());

      default:
        return CupertinoPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Not Found'),
            ),
          ),
        );
    }
  }
}
