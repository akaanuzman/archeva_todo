import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../product/components/linergradient/linear_gradient.dart';
import '../../../product/components/text/custom/custom_headline5.dart';
import '../../../product/components/text/custom/custom_subtitle1.dart';
import '../../../product/components/text/custom/custom_subtitle2.dart';
import '../../../core/base/view/base_view.dart';
import '../../../core/extension/app_extensions.dart';
import '../viewmodel/home_view_model.dart';
import '../../../product/components/appbar/special_appbar.dart';
import '../../../product/components/container/gradient_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BaseView<HomeViewModel>(
        viewModel: HomeViewModel(),
        onModelReady: (model) {
          model.setContext(context);
          model.init();
        },
        onPageBuilder: (BuildContext context, HomeViewModel viewModel) =>
            Scaffold(
          backgroundColor: context.secondaryColor,
          appBar: _appBar(context),
          body: _body(context),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: _coloredButton(context),
        ),
      );

  Container _coloredButton(BuildContext context) => Container(
        decoration: BoxDecoration(
          borderRadius: context.borderRadius28x,
          gradient: ColoredLinearGradient(
              firstColor: context.pinkSecondaryColor,
              secondaryColor: context.pinkColor),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 10),
              color: context.pinkSecondaryColor,
              blurRadius: 20.0,
            )
          ],
        ),
        child: _button(context),
      );

  FloatingActionButton _button(BuildContext context) => FloatingActionButton(
        child: Icon(
          Icons.add,
          size: 40.0,
          color: context.white,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        onPressed: () {},
      );

  SpecialAppBar _appBar(BuildContext context) =>
      SpecialAppBar(context: context, title: "Görevlerim");

  Widget _body(BuildContext context) => FlipInY(
        child: ListView(
          children: [
            _topSection(context),
            _midSection(context),
            _cardsSection(context)
          ],
        ),
      );

  StaggeredGrid _topSection(BuildContext context) => StaggeredGrid.count(
        crossAxisCount: 2,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1.25,
            child: GradientContainer(
              context: context,
              firstColor: context.pinkSecondaryColor,
              secondaryColor: context.pinkColor,
              icon: CupertinoIcons.square_arrow_right,
              title: 'Devam Eden Görevler',
              subtitle: '3 görev',
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1.15,
            child: GradientContainer(
              context: context,
              firstColor: context.blueSecondaryColor,
              secondaryColor: context.blueColor,
              icon: CupertinoIcons.check_mark_circled_solid,
              title: 'Tamamlanan görevler',
              subtitle: '5 görev',
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1.25,
            child: GradientContainer(
              context: context,
              firstColor: context.orangeSecondaryColor,
              secondaryColor: context.orangeColor,
              icon: CupertinoIcons.archivebox,
              title: 'Arşivlenen Görevler',
              subtitle: '1 görev',
            ),
          ),
          StaggeredGridTile.count(
            crossAxisCellCount: 1,
            mainAxisCellCount: 1.15,
            child: GradientContainer(
              context: context,
              firstColor: context.aquaSecondaryColor,
              secondaryColor: context.aquaColor,
              icon: CupertinoIcons.bell_fill,
              title: 'Hatırlatıcılar',
              subtitle: '11 görev',
            ),
          ),
        ],
      );

  Padding _midSection(BuildContext context) => Padding(
        padding: context.padding16x,
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomHeadline5(
                text: 'Devam Eden Görevler',
                context: context,
                color: context.waterloo,
              ),
              context.emptySizedWidthBoxLow3x,
              TextButton(
                onPressed: () {},
                child: CustomSubtitle1(
                  text: 'Hepsini gör',
                  context: context,
                  color: context.pinkSecondaryColor,
                ),
              )
            ],
          ),
        ),
      );

  ListView _cardsSection(BuildContext context) => ListView.separated(
        padding: context.paddingHorizontal12x,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) => _card(context),
        separatorBuilder: (context, index) => context.emptySizedHeightBoxLow2x,
        itemCount: 4,
      );

  Card _card(BuildContext context) => Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: context.borderRadius20x,
        ),
        child: ListTile(
          contentPadding: context.padding16x,
          title: _cardTitle(context),
          subtitle: _cardSubtitle(context),
        ),
      );

  CustomSubtitle1 _cardTitle(BuildContext context) => CustomSubtitle1(
        text: 'Spor salonuna git.',
        context: context,
        fontWeight: FontWeight.w700,
      );

  Column _cardSubtitle(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          context.emptySizedHeightBoxExtraLow,
          _cardTime(context),
          context.emptySizedHeightBoxExtraLow,
          _cardBottom(context)
        ],
      );

  Row _cardTime(BuildContext context) => Row(
        children: [
          Icon(
            CupertinoIcons.clock_fill,
            color: context.pinkColor,
          ),
          context.emptySizedWidthBoxLow,
          CustomSubtitle2(
            text: '15.00 - 17.00',
            context: context,
            fontWeight: FontWeight.w200,
          ),
        ],
      );

  Row _cardBottom(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomSubtitle1(
            text: 'İşaretle :',
            context: context,
            color: context.waterloo,
          ),
          _cardIcons(context)
        ],
      );

  Row _cardIcons(BuildContext context) => Row(
        children: [
          Icon(
            CupertinoIcons.square_arrow_right,
            color: context.pinkColor,
          ),
          context.emptySizedWidthBoxLow,
          Icon(
            CupertinoIcons.check_mark_circled_solid,
            color: context.blueColor,
          ),
          context.emptySizedWidthBoxLow,
          Icon(
            CupertinoIcons.archivebox_fill,
            color: context.orangeColor,
          ),
          context.emptySizedWidthBoxLow,
          Icon(
            CupertinoIcons.bell_fill,
            color: context.aquaColor,
          ),
        ],
      );
}
