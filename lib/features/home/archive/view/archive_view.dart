import 'package:animate_do/animate_do.dart';
import '../../../../core/base/view/base_view.dart';
import '../viewmodel/archive_view_model.dart';
import '../../../../core/extension/app_extensions.dart';
import '../../../../product/components/text/custom/custom_headline6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../product/components/container/day_container.dart';
import '../../../../product/components/text/custom/custom_headline5.dart';

class ArchiveView extends StatelessWidget {
  const ArchiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<ArchiveViewModel>(
        viewModel: ArchiveViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, ArchiveViewModel viewModel) =>
            Scaffold(
          body: viewModel.isEmptyTask
              ? FlipInY(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          CupertinoIcons.archivebox_fill,
                          color: context.pinkColor,
                          size: 50.0,
                        ),
                        context.emptySizedHeightBoxLow,
                        CustomHeadline6(
                            text: 'Henüz arşivlenmiş görev yok.',
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
