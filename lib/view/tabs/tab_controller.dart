import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:telegram_clone/Elements/appbars/homeScreenAppbar.dart';
import 'package:telegram_clone/utils/color_constants.dart';
import 'package:telegram_clone/widgets/drawerWidget.dart';
import 'package:telegram_clone/view/tabs/home_screen.dart';
import 'package:telegram_clone/view/tabs/personal_screen.dart';
import 'package:telegram_clone/view/tabs/unread_screen.dart';
import 'package:telegram_clone/widgets/floatingButton.dart';

class TabControllerSample extends StatelessWidget {
  const TabControllerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FloatingButton(),
          drawer: DrawerWidget(),

          appBar: HomeScreenAppbar(),
          body: TabBarView(children: [
            HomeScreen(),
            PersonalScreen(),
            UnreadScreen(),
          ]),
        ));
  }
}
