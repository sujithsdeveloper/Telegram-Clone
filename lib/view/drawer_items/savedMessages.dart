import 'package:flutter/material.dart';
import 'package:telegram_clone/utils/color_constants.dart';

class SavedMessages extends StatefulWidget {
  const SavedMessages({super.key});

  @override
  State<SavedMessages> createState() => _SavedMessagesState();
}

class _SavedMessagesState extends State<SavedMessages> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  controller: controller,
                  onChanged: (value) {
                    setState(() {});
                  },
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Message',
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                    prefixIcon: Icon(
                      Icons.emoji_emotions_outlined,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              Container(
                color: Colors.white,
                height: 50,
                child: controller.text.isNotEmpty
                    ? IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.blue,
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          ),
                          SizedBox(width: 10),
                          Icon(
                            Icons.mic,
                            color: Colors.grey,
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
          leadingWidth: 30,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          backgroundColor: ColorConstants.primaryColor,
          title: Text(
            'Saved messages',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
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
                          Icons.wallpaper_outlined,
                        ),
                        SizedBox(width: 9),
                        Text(
                          'Change Wallpaper',
                          style: TextStyle(color: Colors.black),
                        )
                      ],
                    ),
                  ),
                  PopupMenuItem(
                      child: Row(
                    children: [
                      Icon(
                        Icons.home_filled,
                      ),
                      SizedBox(width: 9),
                      Text(
                        'Add to Home Screen',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
                  PopupMenuItem(
                      child: Row(
                    children: [
                      Icon(
                        Icons.cleaning_services_outlined,
                      ),
                      SizedBox(width: 9),
                      Text(
                        'Clear History',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
                  PopupMenuItem(
                      child: Row(
                    children: [
                      Icon(
                        Icons.delete,
                      ),
                      SizedBox(width: 9),
                      Text(
                        'Delete Chat',
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
                ];
              },
            )
          ]),
    );
  }
}
