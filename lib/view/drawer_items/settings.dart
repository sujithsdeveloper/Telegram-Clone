import 'package:flutter/material.dart';
import 'package:telegram_clone/dummy_db.dart';
import 'package:telegram_clone/utils/color_constants.dart';
import 'package:telegram_clone/utils/image_constants.dart';
import 'package:telegram_clone/view/drawer_items/widgets/settingaWidget.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        
        appBar: AppBar(

            // toolbarHeight: 150,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.qr_code,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  )),
            ],
            backgroundColor: ColorConstants.primaryColor,
            title: Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImageConstants.PROFILE_PHOTO),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sujith",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Online",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    ),
                  ],
                )
              ],
            )),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                  SettingsCard(title: '@Sujith_Subash', caption: 'Username'),
                  SizedBox(height: 10),
                  SettingsCard(
                      title: 'Bio', caption: 'Add few words about yourself'),
                  Text(
                    'Settings',
                    style: TextStyle(
                        color: ColorConstants.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ListTile(
                      leading: DummyDb.settingsItemsList[index]['icon']!,
                      title: Text(DummyDb.settingsItemsList[index]['label']!),
                    ),
                separatorBuilder: (context, index) => Divider(
                      indent: 50,
                    ),
                itemCount: DummyDb.settingsItemsList.length)
          ],
        ));
  }
}
