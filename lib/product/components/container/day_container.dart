import 'package:flutter/material.dart';

import '../linergradient/linear_gradient.dart';
import 'package:archeva_todo/core/extension/app_extensions.dart';

import '../text/custom/custom_headline5.dart';
import '../text/custom/custom_headline6.dart';

class DayContainer extends Container {
  DayContainer({
    Key? key,
    required BuildContext context,
    required String numDay,
    required String weekDay,
    Color? firstColor,
    Color? seconDaryColor,
  }) : super(
          key: key,
          decoration: BoxDecoration(
            color: context.orangeSecondaryColor,
            gradient: ColoredLinearGradient(
              firstColor: firstColor ?? context.aquaSecondaryColor,
              secondaryColor: seconDaryColor ?? context.aquaColor,
            ),
            borderRadius: context.borderRadius32x,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 10),
                color: seconDaryColor ?? context.aquaColor,
                blurRadius: 20.0,
              )
            ],
          ),
          child: Padding(
            padding: context.padding16x,
            child: Column(
              children: [
                Padding(
                  padding: context.padding8x,
                  child: CustomHeadline5(
                    text: numDay,
                    context: context,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: context.padding8x,
                  child: CustomHeadline6(
                    text: weekDay,
                    context: context,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
}
