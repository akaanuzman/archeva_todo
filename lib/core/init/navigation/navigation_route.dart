import '../../../presentation/common/onboard/view/on_board_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show Scaffold;

import '../../../main.dart';

class NavigationRoute {
  static Route<CupertinoPageRoute> generateRoute(RouteSettings settings) {
    // final arguments = settings.arguments; //argumanlar

    switch (settings.name) {
      case MyApp.path:
        return CupertinoPageRoute(builder: (_) => const MyApp());
      case OnBoardView.path:
        return CupertinoPageRoute(builder: (_) => const OnBoardView());

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