import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../../extension/app_extensions.dart';

abstract class BaseViewModel extends ChangeNotifier {
  late BuildContext context;
  void setState() {
    notifyListeners();
  }

  // final AppConstants appContants = AppConstants.instance;
  // final FirebaseRepository firebaseRepository = FirebaseRepository.instance;

  void setContext(BuildContext context) {
    this.context = context;
  }

  void showToast(String message) async {
    await Fluttertoast.showToast(msg: message);
  }

  void showSnackBar(String message, {Color? color}) async {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(
        SnackBar(
          content: Text(
            message,
            style: context.textTheme.subtitle2,
          ),
          backgroundColor: color ?? context.red,
        ),
      );
  }

  void init();
}
