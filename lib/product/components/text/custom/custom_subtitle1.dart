import 'package:flutter/material.dart';
import '../../../../core/extension/app_extensions.dart';

class CustomSubtitle1 extends Text {
  CustomSubtitle1({
    Key? key,
    required String text,
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
  }) : super(
          text,
          style: context.textTheme.subtitle1!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
          key: key,
        );
}
