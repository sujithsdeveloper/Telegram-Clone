import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:telegram_clone/utils/color_constants.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen(
      {super.key,
      required this.name,
      required this.time,
      required this.bgimage});

  String name;
  String time;
  String bgimage;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final controller = TextEditingController();

  final box = Hive.box('AppData');
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
      appBar: AppBar(
        actions: [
          Icon(
            Icons.call,
            color: Colors.white,
          ),
          SizedBox(width: 10),
          PopupMenuButton(
            iconColor: Colors.white,
            color: Colors.white,
            elevation: 3,
            itemBuilder: (context) => [
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.volume_off_rounded,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Mute'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.video_call_rounded,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Video Call'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Search'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.imagesearch_roller_sharp,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Change Wallpaper'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.cleaning_services_outlined,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Clear History'),
                  ],
                ),
              ),
              PopupMenuItem(
                child: Row(
                  children: [
                    Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text('Delete Chat'),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(width: 10),
        ],
        backgroundColor: ColorConstants.primaryColor,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(widget.bgimage),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Last seen ${widget.time}',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  IconButton buildSendIcon() {
    return IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.send,
          color: Colors.blue,
        ));
  }
}
