import 'package:flutter/material.dart';
import '../../../core/extension/app_extensions.dart';
import 'custom/custom_subtitle2.dart';

class WhiteThinSubtitle2 extends CustomSubtitle2 {
  WhiteThinSubtitle2({
    Key? key,
    required BuildContext context,
    required String text,
  }) : super(
          key: key,
          context: context,
          text: text,
          color: context.secondaryColor,
          fontWeight: FontWeight.w500
        );
}
