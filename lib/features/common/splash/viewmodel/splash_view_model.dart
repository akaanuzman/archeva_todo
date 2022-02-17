import 'dart:async';

import '../../../tabbar/view/tabbar_view.dart';

import '../../../../core/base/viewmodel/base_view_model.dart';
import '../../../../core/extension/app_extensions.dart';
import '../../../../core/init/navigation/navigation_service.dart';

class SplashViewModel extends BaseViewModel {
  @override
  void init() {
    Timer(context.durationNormal, goToOnBoard);
  }

  void goToOnBoard() => NavigationService.pushNamed(TabbarView.path);
}
