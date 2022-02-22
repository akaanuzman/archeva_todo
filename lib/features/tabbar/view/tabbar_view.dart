import '../../home/archive/view/archive_view.dart';
import '../../home/done/view/done_view.dart';
import '../../home/reminder/view/reminder_view.dart';

import '../../home/view/home_view.dart';
import '../../../core/extension/app_extensions.dart';
import '../model/tabbar_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabbarView extends StatelessWidget {
  static const path = '/tabbar';

  final List<TabbarModel> _tabItems = [
    TabbarModel(
        icon: CupertinoIcons.square_grid_2x2_fill, child: const HomeView()),
    TabbarModel(
        icon: CupertinoIcons.check_mark_circled, child: const DoneView()),
    TabbarModel(
        icon: CupertinoIcons.archivebox_fill, child: const ArchiveView()),
    TabbarModel(icon: CupertinoIcons.bell_fill, child: const ReminderView()),
  ];

  TabbarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: _tabItems.length,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: _buildTabBar(context, _tabItems),
          ),
          body: _buildTabBarView(_tabItems),
        ),
      );

  Widget _buildTabBar(BuildContext context, List<TabbarModel> _items) =>
      Container(
        padding: EdgeInsets.only(bottom: context.lowValue),
        child: TabBar(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.fromLTRB(
            context.highValue,
            context.lowValue,
            context.highValue,
            0,
          ),
          labelPadding: EdgeInsets.zero,
          unselectedLabelColor: context.waterloo,
          labelColor: context.pinkColor,
          indicatorColor: Colors.transparent,
          indicator: BoxDecoration(
              border: Border.all(color: context.pinkColor,width:3),
              borderRadius: context.borderRadius4x,
              ),
          indicatorSize: TabBarIndicatorSize.label,
          tabs: _buildTabs(_items, context),
        ),
      );

  List<Widget> _buildTabs(List<TabbarModel> _items, BuildContext context) =>
      List.generate(
        _items.length,
        (index) => Container(
          margin: context.paddingHorizontal8x,
          child: Tab(
            icon: Icon(_items[index].icon),
          ),
        ),
      );

  Widget _buildTabBarView(List<TabbarModel> models) =>
      TabBarView(children: models.map((e) => e.child).toList());
}

  // TabBar _buildTabBar(BuildContext context, List<TabbarModel> _items) => TabBar(
  //       padding: context.padding16x,
  //       unselectedLabelColor: context.greyColor,
  //       labelColor: context.pinkColor,
  //       indicatorColor: context.pinkColor,
  //       indicator: BoxDecoration(
  //         color: context.softPink,
  //         borderRadius: context.borderRadius4x,
  //       ),
  //       tabs: _buildTabs(_items, context),
  //     );

  // List<Widget> _buildTabs(List<TabbarModel> _items, BuildContext context) =>
  //     List.generate(
  //       _items.length,
  //       (index) => Tab(
  //         icon: Icon(_items[index].icon),
  //       ),
  //     );

  // TabBarView _buildTabBarView(List<TabbarModel> models) =>
  //     TabBarView(children: models.map((e) => e.child).toList());

