import 'package:flutter/material.dart';
import 'package:telegram_clone/dummy_db.dart';
import 'package:telegram_clone/utils/color_constants.dart';
import 'package:telegram_clone/utils/image_constants.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
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
                      backgroundImage: AssetImage(ImageConstants.PROFILE_PHOTO),
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
                height: MediaQuery.sizeOf(context).height * 0.711,
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                      DummyDb.drawerData.length,
                      (index) => InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      DummyDb.drawerItemScreensList[index],
                                )),
                            child: ListTile(
                              leading: DummyDb.drawerData[index]['icon'],
                              title: Text(DummyDb.drawerData[index]['Label']),
                            ),
                          )),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: ColorConstants.primaryColor,
    );
  }
}
