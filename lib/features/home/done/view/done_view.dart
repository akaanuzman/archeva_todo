import 'package:animate_do/animate_do.dart';
import 'package:archeva_todo/core/base/view/base_view.dart';
import 'package:archeva_todo/features/home/done/viewmodel/done_view_model.dart';
import 'package:archeva_todo/core/extension/app_extensions.dart';
import 'package:archeva_todo/product/components/container/day_container.dart';
import 'package:archeva_todo/product/components/text/custom/custom_headline5.dart';
import 'package:archeva_todo/product/components/text/custom/custom_headline6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../product/components/linergradient/linear_gradient.dart';
import '../../../../product/components/text/custom/custom_headline4.dart';

class DoneView extends StatelessWidget {
  const DoneView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<DoneViewModel>(
        viewModel: DoneViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, DoneViewModel viewModel) =>
            Scaffold(
          backgroundColor: context.secondaryColor,
          body: viewModel.isEmptyTask
              ? FlipInX(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.check_mark_circled,
                          color: context.pinkColor,
                          size: 50.0,
                        ),
                        context.emptySizedHeightBoxLow,
                        CustomHeadline6(
                            text: 'Henüz tamamlanmış görev yok.',
                            context: context)
                      ],
                    ),
                  ),
                )
              : FlipInX(
                  child: ListView(
                    padding: context.padding16x,
                    children: [
                      context.emptySizedHeightBoxNormal,
                      CustomHeadline5(
                        text: "Tamamlanan Görevler",
                        context: context,
                        color: context.waterloo,
                      ),
                      context.emptySizedHeightBoxLow3x,
                      CustomHeadline6(
                          text: viewModel.todayString, context: context),
                      context.emptySizedHeightBoxLow3x,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          DayContainer(
                            context: context,
                            numDay: viewModel.yesterdayNumDay,
                            weekDay: viewModel.yesterdayWeekDay,
                          ),
                          DayContainer(
                            context: context,
                            numDay: viewModel.todayNumDay,
                            weekDay: viewModel.tomorrowWeekDay,
                            firstColor: context.orangeSecondaryColor,
                            seconDaryColor: context.orangeColor,
                          ),
                          DayContainer(
                            context: context,
                            numDay: viewModel.tomorrowNumDay,
                            weekDay: viewModel.tomorrowWeekDay,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
        ),
      );
}
