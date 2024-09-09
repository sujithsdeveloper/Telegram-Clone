import 'package:flutter/material.dart';
import 'package:telegram_clone/dummy_db.dart';
import 'package:telegram_clone/utils/color_constants.dart';
import 'package:telegram_clone/utils/image_constants.dart';
import 'package:telegram_clone/view/tabs/home_screen.dart';
import 'package:telegram_clone/view/tabs/personal_screen.dart';
import 'package:telegram_clone/view/tabs/unread_screen.dart';

class TabControllerSample extends StatelessWidget {
  const TabControllerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
            backgroundColor: ColorConstants.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
          drawer: Drawer(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage:
                                AssetImage(ImageConstants.PROFILE_PHOTO),
                          ),
                          Icon(
                            Icons.sunny,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sujith',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '9746696329',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.sizeOf(context).height - 198,
                      color: Colors.white,
                      child: Column(
                        children: List.generate(
                            DummyDb.drawerData.length,
                            (index) => InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DummyDb
                                            .drawerItemScreensList[index],
                                      )),
                                  child: ListTile(
                                    leading: DummyDb.drawerData[index]['icon'],
                                    title: Text(
                                        DummyDb.drawerData[index]['Label']),
                                  ),
                                )),
                      ),
                    )
                  ],
                ),
              ],
            ),
            backgroundColor: ColorConstants.primaryColor,
          ),
          appBar: AppBar(
            // leading: IconButton(
            //     onPressed: () {
            //       Scaffold.of(context).openDrawer();
            //     },
            //     icon: Icon(
            //       Icons.menu,
            //       color: Colors.white,
            //     )),
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
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            backgroundColor: ColorConstants.primaryColor,
            bottom: TabBar(
                dividerColor: Colors.white,
                indicatorColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.label,
                labelColor: Colors.white,
                unselectedLabelStyle:
                    TextStyle(color: Colors.white.withOpacity(0.8)),
                tabs: [
                  Tab(text: 'All'),
                  Tab(text: 'Personal'),
                  Tab(text: 'Unread'),
                ]),
          ),
          body: TabBarView(children: [
            HomeScreen(),
            PersonalScreen(),
            UnreadScreen(),
          ]),
        ));
  }
}
