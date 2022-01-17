import 'dart:async';

import '../../../../core/base/viewmodel/base_view_model.dart';
import '../../../../core/extension/app_extensions.dart';
import '../../../../core/init/navigation/navigation_service.dart';
import '../../onboard/view/on_board_view.dart';

class SplashViewModel extends BaseViewModel {
  @override
  void init() {
    Timer(context.durationNormal, goToOnBoard);
  }

  void goToOnBoard() => NavigationService.pushNamed(OnBoardView.path);
}
