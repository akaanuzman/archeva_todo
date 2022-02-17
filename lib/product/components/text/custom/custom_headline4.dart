import 'package:flutter/material.dart';
import '../../../../core/extension/app_extensions.dart';

class CustomHeadline4 extends Text {
  CustomHeadline4({
    Key? key,
    required String text,
    required BuildContext context,
    Color? color,
  }) : super(
          text,
          style: context.textTheme.headline4!.copyWith(color: color),
          key: key,
        );
}
