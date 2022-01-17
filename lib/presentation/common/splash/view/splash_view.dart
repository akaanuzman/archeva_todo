import '../../../../core/base/view/base_view.dart';
import '../viewmodel/splash_view_model.dart';
import 'package:flutter/material.dart';
import '../../../../core/extension/app_extensions.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<SplashViewModel>(
        viewModel: SplashViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, SplashViewModel viewModel) =>
            Scaffold(
          backgroundColor: context.background,
          body: _bodyView(context),
        ),
      );

  Center _bodyView(BuildContext context) => Center(
        child: _containerImageView(context),
      );

  Container _containerImageView(BuildContext context) => Container(
        height: context.height,
        width: context.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logo.png"),
          ),
        ),
      );
}
