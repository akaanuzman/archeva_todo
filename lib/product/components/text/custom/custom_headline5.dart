import 'package:flutter/material.dart';

import '../../../../core/extension/app_extensions.dart';

class CustomHeadline5 extends Text {
  CustomHeadline5({
    Key? key,
    required String text,
    required BuildContext context,
    Color? color,
    FontWeight? fontWeight,
  }) : super(
          text,
          style: context.textTheme.headline5!.copyWith(
            color: color,
            fontWeight: fontWeight,
          ),
          key: key,
        );
}
