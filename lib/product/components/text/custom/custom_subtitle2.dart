import 'package:flutter/material.dart';
import '../../../../core/extension/app_extensions.dart';

class CustomSubtitle2 extends Text {
  CustomSubtitle2({
    Key? key,
    required String text,
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
  }) : super(
          text,
          style: context.textTheme.subtitle2!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
          key: key,
        );
}
