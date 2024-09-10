import 'package:flutter/material.dart';
import 'package:telegram_clone/dummy_db.dart';
import 'package:telegram_clone/utils/color_constants.dart';

AppBar HomeScreenAppbar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.white),
    actions: [
      IconButton(
        onPressed: () {},
        icon: Icon(Icons.search, color: Colors.white),
      ),
      SizedBox(
        width: 15,
      )
    ],
    title: Text(
      'Telegram',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
    ),
    backgroundColor: ColorConstants.primaryColor,
    bottom: TabBar(
        dividerColor: Colors.white,
        indicatorColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white.withOpacity(0.8)),
        tabs: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Tab(text: 'All'),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 10,
                child: Text(
                  DummyDb.chatList.length.toString(),
                  style: TextStyle(
                      color: ColorConstants.primaryColor, fontSize: 12),
                ),
              )
            ],
          ),
          Tab(text: 'Personal'),
          Tab(text: 'Unread'),
        ]),
  );
}
