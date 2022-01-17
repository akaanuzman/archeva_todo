import '../../../../core/base/view/base_view.dart';
import '../viewmodel/on_board_view_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/extension/app_extensions.dart';

class OnBoardView extends StatelessWidget {
  static const path = "/onboard";

  const OnBoardView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context)=> BaseView<OnBoardViewModel>(
        viewModel: OnBoardViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, OnBoardViewModel viewModel) =>
            Scaffold(
          backgroundColor: context.background,
          body: const Center(
            child: Text("Onboard"),
          ),

        ),
      );
}