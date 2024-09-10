import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:telegram_clone/utils/color_constants.dart';
import 'package:telegram_clone/utils/image_constants.dart';

class Peoplenearby extends StatelessWidget {
  const Peoplenearby({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 221, 221),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 81,
                    backgroundColor: ColorConstants.primaryColor,
                    child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 80,
                        child: Lottie.asset(
                            height: 100, ImageConstants.LOCATION_ANIMATION)),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'People Nearby',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.nature_people_outlined,
                        color: ColorConstants.primaryColor),
                    SizedBox(width: 20),
                    Text(
                      'Make Myself Visible',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Groups Nearby',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.group_add_outlined,
                        color: ColorConstants.primaryColor),
                    SizedBox(width: 20),
                    Text(
                      'Create a Local Group',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
