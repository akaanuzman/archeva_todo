import 'package:flutter/material.dart';
import '../../../core/extension/app_extensions.dart';
import 'custom/custom_subtitle1.dart';

class WhiteBoldSubtitle1 extends CustomSubtitle1 {
  WhiteBoldSubtitle1({
    Key? key,
    required BuildContext context,
    required String text,
  }) : super(
          key: key,
          context: context,
          text: text,
          color: context.secondaryColor,
          fontWeight: FontWeight.w700,
        );
}
