import 'package:flutter/material.dart';
import 'package:telegram_clone/utils/color_constants.dart';

class SavedMessages extends StatelessWidget {
  const SavedMessages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 30,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        backgroundColor: ColorConstants.primaryColor,
        title: Row(
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  // gradient: LinearGradient(
                  //     tileMode: TileMode.decal,
                  //     colors: [Colors.white, Colors.blue]),

                  color: Colors.blueAccent),
              child: Icon(
                Icons.bookmark_outline,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10),
            Text(
              'Saved messages',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          IconButton(
            child: PopupMenuItem(
                child: Row(
              children: [
                Icon(
                  Icons.wallpaper_outlined,
                ),
                Text(
                  'Change Wallpaper',
                  style: TextStyle(color: Colors.white),
                )
              ],
            )),
          ),
          PopupMenuItem(
              child: Row(
            children: [
              Icon(
                Icons.home_filled,
              ),
              Text(
                'Add to Home Screen',
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
          PopupMenuItem(
              child: Row(
            children: [
              Icon(
                Icons.cleaning_services_outlined,
              ),
              Text(
                'Clear History',
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
          PopupMenuItem(
              child: Row(
            children: [
              Icon(
                Icons.delete,
              ),
              Text(
                'Delete Chat',
                style: TextStyle(color: Colors.white),
              )
            ],
          )),
        ],
      ),
    );
  }
}
