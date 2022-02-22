import '../init/theme/custom_text_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppExt {}

class SpaceSizedHeightBox extends StatelessWidget {
  final double height;

  const SpaceSizedHeightBox({Key? key, required this.height})
      : assert(height > 0 && height <= 1),
        super(key: key);
  @override
  Widget build(BuildContext context) =>
      SizedBox(height: context.height * height);
}

class SpaceSizedWidthBox extends StatelessWidget {
  final double width;

  const SpaceSizedWidthBox({Key? key, required this.width})
      : assert(width > 0 && width <= 1),
        super(key: key);
  @override
  Widget build(BuildContext context) => SizedBox(width: context.width * width);
}

extension MediaQueryExtension on BuildContext {
  MediaQueryData get mediaQuery => MediaQuery.of(this);

  double get height => mediaQuery.size.height;
  double get width => mediaQuery.size.width;

  double get lowValue => height * 0.01;
  double get normalValue => height * 0.02;
  double get mediumValue => height * 0.04;
  double get highValue => height * 0.1;

  double dynamicWidth(double val) => width * val;
  double dynamicHeight(double val) => height * val;
}

extension SizedBoxExtension on BuildContext {
  Widget get emptySizedWidthBoxLow => const SpaceSizedWidthBox(width: 0.01);
  Widget get emptySizedWidthBoxLow2x => const SpaceSizedWidthBox(width: 0.02);
  Widget get emptySizedWidthBoxLow3x => const SpaceSizedWidthBox(width: 0.03);
  Widget get emptySizedWidthBoxLow4x => const SpaceSizedWidthBox(width: 0.04);
  Widget get emptySizedWidthBoxNormal => const SpaceSizedWidthBox(width: 0.05);
  Widget get emptySizedWidthBoxExtraNormal => const SpaceSizedWidthBox(width: 0.075);

  Widget get emptySizedWidthBoxHigh => const SpaceSizedWidthBox(width: 0.1);

  Widget get emptySizedHeightBoxExtraLow =>
      const SpaceSizedHeightBox(height: 0.005);
  Widget get emptySizedHeightBoxLow => const SpaceSizedHeightBox(height: 0.01);
  Widget get emptySizedHeightBoxLow2x =>
      const SpaceSizedHeightBox(height: 0.02);
  Widget get emptySizedHeightBoxLow3x =>
      const SpaceSizedHeightBox(height: 0.03);
  Widget get emptySizedHeightBoxLow4x =>
      const SpaceSizedHeightBox(height: 0.04);
  Widget get emptySizedHeightBoxNormal =>
      const SpaceSizedHeightBox(height: 0.05);
  Widget get emptySizedHeightBoxHigh => const SpaceSizedHeightBox(height: 0.1);
}

extension BorderRadiusExtensionAll on BuildContext {
  BorderRadius get borderRadius1x =>
      BorderRadius.circular(ScreenUtil().setSp(1));
  BorderRadius get borderRadius2x =>
      BorderRadius.circular(ScreenUtil().setSp(2));
  BorderRadius get borderRadius4x =>
      BorderRadius.circular(ScreenUtil().setSp(4));
  BorderRadius get borderRadius8x =>
      BorderRadius.circular(ScreenUtil().setSp(8));
  BorderRadius get borderRadius12x =>
      BorderRadius.circular(ScreenUtil().setSp(12));
  BorderRadius get borderRadius16x =>
      BorderRadius.circular(ScreenUtil().setSp(16));
  BorderRadius get borderRadius20x =>
      BorderRadius.circular(ScreenUtil().setSp(20));
  BorderRadius get borderRadius24x =>
      BorderRadius.circular(ScreenUtil().setSp(24));
  BorderRadius get borderRadius28x =>
      BorderRadius.circular(ScreenUtil().setSp(28));
  BorderRadius get borderRadius32x =>
      BorderRadius.circular(ScreenUtil().setSp(32));
}

extension PaddingExtensionAll on BuildContext {
  EdgeInsets get padding1x => EdgeInsets.all(ScreenUtil().setSp(1));
  EdgeInsets get padding2x => EdgeInsets.all(ScreenUtil().setSp(2));
  EdgeInsets get padding4x => EdgeInsets.all(ScreenUtil().setSp(4));
  EdgeInsets get padding8x => EdgeInsets.all(ScreenUtil().setSp(8));
  EdgeInsets get padding12x => EdgeInsets.all(ScreenUtil().setSp(12));
  EdgeInsets get padding16x => EdgeInsets.all(ScreenUtil().setSp(16));
}

extension PaddingExtensionOnly on BuildContext {
  EdgeInsets get paddingLeft1x => EdgeInsets.only(left: ScreenUtil().setSp(1));
  EdgeInsets get paddingLeft2x => EdgeInsets.only(left: ScreenUtil().setSp(2));
  EdgeInsets get paddingLeft4x => EdgeInsets.only(left: ScreenUtil().setSp(4));
  EdgeInsets get paddingLeft8x => EdgeInsets.only(left: ScreenUtil().setSp(8));
  EdgeInsets get paddingLeft12x =>
      EdgeInsets.only(left: ScreenUtil().setSp(12));
  EdgeInsets get paddingLeft16x =>
      EdgeInsets.only(left: ScreenUtil().setSp(16));

  EdgeInsets get paddingRight1x =>
      EdgeInsets.only(right: ScreenUtil().setSp(1));
  EdgeInsets get paddingRight2x =>
      EdgeInsets.only(right: ScreenUtil().setSp(2));
  EdgeInsets get paddingRight4x =>
      EdgeInsets.only(right: ScreenUtil().setSp(4));
  EdgeInsets get paddingRight8x =>
      EdgeInsets.only(right: ScreenUtil().setSp(8));
  EdgeInsets get paddingRight12x =>
      EdgeInsets.only(right: ScreenUtil().setSp(12));
  EdgeInsets get paddingRight16x =>
      EdgeInsets.only(right: ScreenUtil().setSp(16));
}

extension PaddingExtensionHorizontal on BuildContext {
  EdgeInsets get paddingHorizontal1x =>
      EdgeInsets.symmetric(horizontal: ScreenUtil().setSp(1));
  EdgeInsets get paddingHorizontal2x =>
      EdgeInsets.symmetric(horizontal: ScreenUtil().setSp(2));
  EdgeInsets get paddingHorizontal4x =>
      EdgeInsets.symmetric(horizontal: ScreenUtil().setSp(4));
  EdgeInsets get paddingHorizontal8x =>
      EdgeInsets.symmetric(horizontal: ScreenUtil().setSp(8));
  EdgeInsets get paddingHorizontal12x =>
      EdgeInsets.symmetric(horizontal: ScreenUtil().setSp(12));
  EdgeInsets get paddingHorizontal16x =>
      EdgeInsets.symmetric(horizontal: ScreenUtil().setSp(16));
}

extension PaddingExtensionVertical on BuildContext {
  EdgeInsets get paddingVertical1x =>
      EdgeInsets.symmetric(vertical: ScreenUtil().setSp(1));
  EdgeInsets get paddingVertical2x =>
      EdgeInsets.symmetric(vertical: ScreenUtil().setSp(2));
  EdgeInsets get paddingVertical4x =>
      EdgeInsets.symmetric(vertical: ScreenUtil().setSp(4));
  EdgeInsets get paddingVertical8x =>
      EdgeInsets.symmetric(vertical: ScreenUtil().setSp(8));
  EdgeInsets get paddingVertical12x =>
      EdgeInsets.symmetric(vertical: ScreenUtil().setSp(12));
  EdgeInsets get paddingVertical16x =>
      EdgeInsets.symmetric(vertical: ScreenUtil().setSp(16));
}

extension SizeExtension on num {
  double get w => ScreenUtil().setWidth(this);
  double get h => ScreenUtil().setHeight(this);
  double get sp => ScreenUtil().setSp(this);
}

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => CustomTextTheme(this);

  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;

  Color get primaryColor => const Color(0xffffb6c1);
  Color get secondaryColor => const Color(0xFFECEEF5);

  Color get pinkColor => const Color(0XFFF65A8A);
  Color get pinkSecondaryColor => const Color(0XFFFF8DAF);
  Color get blueColor => const Color(0XFF927BFB);
  Color get blueSecondaryColor => const Color(0XFFAA95F5);
  Color get orangeColor => const Color(0XFFFFAB46);
  Color get orangeSecondaryColor => const Color(0XFFFFC179);
  Color get aquaColor => const Color(0XFF4BC9EC);
  Color get aquaSecondaryColor => const Color(0XFF85E3FC);
  Color get softPink => const Color(0xffFFB8BF);
  Color get greyColor => Colors.black26;
  Color get white => Colors.white;

  Color get softGreen => const Color(0xffe6f2e8);
  Color get waterloo => const Color(0XFF7f83a3);

  Color get red => isDarkMode
      ? const Color.fromARGB(255, 255, 69, 58)
      : const Color.fromARGB(255, 255, 59, 48);

  Color get orange => isDarkMode
      ? const Color.fromARGB(255, 255, 159, 10)
      : const Color.fromARGB(255, 255, 149, 0);

  Color get yellow => isDarkMode
      ? const Color.fromARGB(255, 255, 214, 10)
      : const Color.fromARGB(255, 255, 204, 0);

  Color get green => isDarkMode
      ? const Color.fromARGB(255, 48, 209, 88)
      : const Color.fromARGB(255, 52, 199, 89);

  Color get teal => isDarkMode
      ? const Color.fromARGB(255, 100, 210, 255)
      : const Color.fromARGB(255, 90, 200, 250);

  Color get blue => isDarkMode
      ? const Color.fromARGB(255, 10, 132, 255)
      : const Color.fromARGB(255, 0, 122, 255);

  Color get indigo => isDarkMode
      ? const Color.fromARGB(255, 94, 92, 230)
      : const Color.fromARGB(255, 88, 86, 214);

  Color get purple => isDarkMode
      ? const Color.fromARGB(255, 191, 90, 242)
      : const Color.fromARGB(255, 175, 82, 222);

  Color get pink => isDarkMode
      ? const Color.fromARGB(255, 255, 55, 95)
      : const Color.fromARGB(255, 255, 45, 85);

  Color get grey => isDarkMode
      ? const Color.fromARGB(255, 142, 142, 147)
      : const Color.fromARGB(255, 142, 142, 147);

  Color get grey2 => isDarkMode
      ? const Color.fromARGB(255, 99, 99, 102)
      : const Color.fromARGB(255, 174, 174, 178);

  Color get grey3 => isDarkMode
      ? const Color.fromARGB(255, 72, 72, 74)
      : const Color.fromARGB(255, 199, 199, 204);

  Color get grey4 => isDarkMode
      ? const Color.fromARGB(255, 58, 58, 60)
      : const Color.fromARGB(255, 209, 209, 214);

  Color get grey5 => isDarkMode
      ? const Color.fromARGB(255, 44, 44, 46)
      : const Color.fromARGB(255, 229, 229, 234);

  Color get grey6 => isDarkMode
      ? const Color.fromARGB(255, 28, 28, 30)
      : const Color.fromARGB(255, 242, 242, 247);

  Color get label => isDarkMode
      ? const Color.fromARGB(255, 255, 255, 255)
      : const Color.fromARGB(255, 0, 0, 0);

  Color get secondaryLabel => isDarkMode
      ? const Color(0xff8083A3)
      : const Color.fromARGB(153, 60, 60, 67);

  Color get tertiaryLabel => isDarkMode
      ? const Color.fromARGB(153, 235, 235, 245)
      : const Color.fromARGB(153, 60, 60, 67);

  Color get quaternaryLabel => isDarkMode
      ? const Color.fromARGB(40, 235, 235, 245)
      : const Color.fromARGB(45, 60, 60, 67);

  Color get background => isDarkMode
      ? const Color.fromARGB(255, 0, 0, 0)
      : const Color.fromARGB(255, 255, 255, 255);

  Color get secondaryBackground => isDarkMode
      ? const Color.fromARGB(255, 28, 28, 30)
      : const Color.fromARGB(255, 242, 242, 247);

  Color get tertiaryBackground => isDarkMode
      ? const Color.fromARGB(255, 44, 44, 46)
      : const Color.fromARGB(255, 255, 255, 255);

  Color get groupedBackground => isDarkMode
      ? const Color.fromARGB(255, 44, 44, 46)
      : const Color.fromARGB(255, 242, 242, 247);

  Color get secondaryGroupedBackground => isDarkMode
      ? const Color.fromARGB(255, 28, 28, 30)
      : const Color.fromARGB(255, 255, 255, 255);

  Color get tertiaryGroupedBackground => isDarkMode
      ? const Color.fromARGB(255, 44, 44, 46)
      : const Color.fromARGB(255, 242, 242, 247);

  Color get cyan => isDarkMode
      ? const Color.fromRGBO(100, 210, 255, 1)
      : const Color.fromRGBO(100, 210, 255, 1);

  Color get mint => isDarkMode
      ? const Color.fromRGBO(102, 212, 207, 1)
      : const Color.fromRGBO(0, 199, 190, 1);

  Color get brown => isDarkMode
      ? const Color.fromRGBO(172, 142, 104, 1)
      : const Color.fromRGBO(162, 132, 94, 1);

  Color get seperatorColor => isDarkMode
      ? const Color.fromRGBO(84, 84, 88, 0.6)
      : const Color.fromRGBO(60, 60, 67, 0.29);

  Color get opaqueSeperatorColor => isDarkMode
      ? const Color.fromRGBO(56, 56, 58, 1)
      : const Color.fromRGBO(198, 198, 200, 1);

  Color get placeholderColor => isDarkMode
      ? const Color.fromRGBO(235, 235, 245, 0.3)
      : const Color.fromRGBO(60, 60, 67, 0.3);
}

extension DurationExtension on BuildContext {
  Duration get durationLow => const Duration(milliseconds: 500);
  Duration get durationNormal => const Duration(seconds: 1);
  Duration get durationSlow => const Duration(seconds: 2);
}


  Color get primaryColor => const Color(0xffffb6c1);
  Color get secondaryColor => const Color(0xFFECEEF5);

  Color get pinkColor => const Color(0XFFF65A8A);
  Color get pinkSecondaryColor => const Color(0XFFFF8DAF);
  Color get blueColor => const Color(0XFF927BFB);
  Color get blueSecondaryColor => const Color(0XFFAA95F5);
  Color get orangeColor => const Color(0XFFFFAB46);
  Color get orangeSecondaryColor => const Color(0XFFFFC179);
  Color get aquaColor => const Color(0XFF4BC9EC);
  Color get aquaSecondaryColor => const Color(0XFF85E3FC);
  Color get softPink => const Color(0xffFFB8BF);
  Color get greyColor => Colors.black26;
  Color get white => Colors.white;

  Color get softGreen => const Color(0xffe6f2e8);
  Color get waterloo => const Color(0XFF7f83a3);