import '../linergradient/linear_gradient.dart';

import '../text/white_bold_subtitle1.dart';
import '../text/white_thin_subtitle2.dart';
import 'package:flutter/material.dart';
import '../../../core/extension/app_extensions.dart';

class GradientContainer extends Padding {
  GradientContainer({
    Key? key,
    required BuildContext context,
    required Color firstColor,
    required Color secondaryColor,
    required IconData icon,
    required String title,
    required String subtitle,
  }) : super(
          key: key,
          padding: context.padding12x,
          child: Container(
            padding: context.padding8x,
            decoration: _decoration(firstColor, context, secondaryColor),
            child: _content(icon, context, title, subtitle),
          ),
        );

  static BoxDecoration _decoration(
          Color firstColor, BuildContext context, Color secondaryColor) =>
      BoxDecoration(
        color: firstColor,
        borderRadius: context.borderRadius16x,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 10),
            color: secondaryColor,
            blurRadius: 20.0,
          )
        ],
        gradient: ColoredLinearGradient(
          firstColor: firstColor,
          secondaryColor: secondaryColor,
        ),
      );

  static Column _content(
          IconData icon, BuildContext context, String title, String subtitle) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _icon(icon, context),
          context.emptySizedHeightBoxLow2x,
          _titles(
            context,
            WhiteBoldSubtitle1(context: context, text: title),
          ),
          _titles(
            context,
            WhiteThinSubtitle2(context: context, text: subtitle),
          ),
        ],
      );

  static Icon _icon(IconData icon, BuildContext context) => Icon(
        icon,
        size: context.dynamicWidth(0.15),
        color: context.secondaryColor,
      );

  static Padding _titles(BuildContext context, Widget widget) =>
      Padding(padding: context.paddingHorizontal8x, child: widget);
}
