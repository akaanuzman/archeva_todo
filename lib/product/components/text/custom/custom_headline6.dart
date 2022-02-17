import 'package:flutter/material.dart';
import '../../../../core/extension/app_extensions.dart';

class CustomHeadline6 extends Text {
  CustomHeadline6({
    Key? key,
    required String text,
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
  }) : super(
          text,
          style: context.textTheme.headline6!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
          key: key,
        );
}
