import '../text/custom/custom_headline4.dart';
import 'package:flutter/material.dart';
import '../../../core/extension/app_extensions.dart';

class SpecialAppBar extends AppBar {
  SpecialAppBar({
    Key? key,
    required BuildContext context,
    required String title,
  }) : super(
          key: key,
          title: _title(context, title),
          centerTitle: false,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
        );

  static CustomHeadline4 _title(BuildContext context, String title) =>
      CustomHeadline4(
        text: title,
        context: context,
        color: context.waterloo,
      );
}
