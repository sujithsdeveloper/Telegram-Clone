import 'package:flutter/material.dart';
import 'package:telegram_clone/dummy_db.dart';
import 'package:telegram_clone/utils/color_constants.dart';
import 'package:telegram_clone/view/chat_screen/chat_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.separated(
          itemBuilder: (context, index) => InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatScreen(
                        name: DummyDb.chatList[index]['name']!,
                        time: DummyDb.chatList[index]['time']!,
                        bgimage: DummyDb.chatList[index]['url']!,
                        index: index,
                      ),
                    )),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage:
                        NetworkImage(DummyDb.chatList[index]['url']!),
                  ),
                  title: Text(DummyDb.chatList[index]['name']!),
                  subtitle: Text(DummyDb.chatList[index]['message']!),
                  trailing: Column(
                    children: [
                      Text(DummyDb.chatList[index]['time']!),
                      SizedBox(
                        height: 12,
                      ),
                      CircleAvatar(
                        backgroundColor: ColorConstants.primaryColor,
                        radius: 12,
                        child: Text(
                          DummyDb.chatList[index]['messageNumber']!,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
          separatorBuilder: (context, index) => SizedBox(),
          itemCount: DummyDb.chatList.length),
    );
  }
}
