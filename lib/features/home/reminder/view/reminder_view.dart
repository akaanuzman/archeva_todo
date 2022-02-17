import 'package:animate_do/animate_do.dart';
import 'package:archeva_todo/core/base/view/base_view.dart';
import 'package:archeva_todo/core/extension/app_extensions.dart';
import 'package:archeva_todo/features/home/reminder/viewmodel/reminder_view_model.dart';
import 'package:archeva_todo/product/components/text/custom/custom_headline6.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReminderView extends StatelessWidget {
  const ReminderView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<ReminderViewModel>(
        viewModel: ReminderViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, ReminderViewModel viewModel) =>
            Scaffold(
          body: FlipInX(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    CupertinoIcons.bell_fill,
                    color: context.pinkColor,
                    size: 50.0,
                  ),
                  context.emptySizedHeightBoxLow,
                  CustomHeadline6(
                      text: 'Henüz yaklaşan görev yok.', context: context)
                ],
              ),
            ),
          ),
        ),
      );
}
