import 'package:flutter/material.dart';
import 'package:telegram_clone/dummy_db.dart';
import 'package:telegram_clone/utils/color_constants.dart';
import 'package:telegram_clone/utils/image_constants.dart';
import 'package:telegram_clone/widgets/settingsWidget.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              actions: [
                Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
                PopupMenuButton(
                  iconColor: Colors.white,
                  color: Colors.white,
                  position: PopupMenuPosition.under,
                  itemBuilder: (context) {
                    return [
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(
                              Icons.edit,
                            ),
                            SizedBox(width: 9),
                            Text(
                              'Edit info',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.brush_outlined,
                          ),
                          SizedBox(width: 9),
                          Text(
                            'Edit Profile Color',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.camera_alt_rounded,
                          ),
                          SizedBox(width: 9),
                          Text(
                            'Set Profile Photo',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.save_alt_sharp,
                          ),
                          SizedBox(width: 9),
                          Text(
                            'Save to Gallery',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.delete_outline,
                          ),
                          SizedBox(width: 9),
                          Text(
                            'Delete',
                            style: TextStyle(color: Colors.black),
                          )
                        ],
                      )),
                    ];
                  },
                )
              ],
              stretch: true,
              pinned: true,
              backgroundColor: ColorConstants.primaryColor,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Image(
                  image: AssetImage(
                    ImageConstants.PROFILE_PHOTO,
                  ),
                  fit: BoxFit.cover,
                ),
                title: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    // Hide the title when the app bar is fully expanded
                    double appBarHeight = constraints.biggest.height;
                    bool showTitle =
                        appBarHeight < 200; // Adjust this value as needed

                    return showTitle
                        ? Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 26),
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                        ImageConstants.PROFILE_PHOTO),
                                  ),
                                ],
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 26),
                                  Text(
                                    "Sujith",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Online",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                            ],
                          )
                        : SizedBox.shrink();
                  },
                ),
              ),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account',
                        style: TextStyle(
                            color: ColorConstants.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      SettingsCard(
                        title: '+91 9746696329',
                        caption: 'Tap to change the phone number',
                      ),
                      SizedBox(height: 10),
                      SettingsCard(
                          title: '@Sujith_Subash', caption: 'Username'),
                      SizedBox(height: 10),
                      SettingsCard(
                          title: 'Bio',
                          caption: 'Add few words about yourself'),
                    ],
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            color: ColorConstants.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) => ListTile(
                              leading: DummyDb.settingsItemsList[index]
                                  ['icon']!,
                              title: Text(
                                  DummyDb.settingsItemsList[index]['label']!),
                            ),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 2,
                            ),
                        itemCount: DummyDb.settingsItemsList.length)
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(
                        'Help',
                        style: TextStyle(
                            color: ColorConstants.primaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.message,
                        color: Colors.grey,
                      ),
                      title: Text('Ask a question'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.info_outline,
                        color: Colors.grey,
                      ),
                      title: Text('Telegram FAQ'),
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.privacy_tip_outlined,
                        color: Colors.grey,
                      ),
                      title: Text(
                        'Privacy policy',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
