import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_chat_bubble/chat_bubble.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/intl.dart';
import 'package:telegram_clone/dummy_db.dart';
import 'package:telegram_clone/utils/color_constants.dart';
import 'package:telegram_clone/utils/image_constants.dart';
import 'package:telegram_clone/view/chatProfileScreen/chatProfileScreen.dart';
import 'package:telegram_clone/widgets/chatPopupMenu.dart';
import 'package:telegram_clone/widgets/greetingsCard.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen(
      {super.key,
      required this.name,
      required this.time,
      required this.bgimage,
      required this.index});
  String name;
  String time;
  String bgimage;
  int index;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final controller = TextEditingController();
  late Box<String> chatBox;

  @override
  void initState() {
    super.initState();
    chatBox = Hive.box<String>('chatBox');
  }

  void addMessage(String message) {
    if (message.trim().isNotEmpty) {
      chatBox.add(message);
      controller.clear();
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstants.WALLPAEPER),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottemTextfeild(context),
        appBar: AppBar(
          actions: [
            Icon(
              Icons.call,
              color: Colors.white,
            ),
            SizedBox(width: 10),
            ChatPopupMenu(
              clearHistory: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Do you want clear this chat?',
                        style: TextStyle(color: Colors.black),
                      ),
                      content: Text(
                        'This action will clear all messages',
                        style: TextStyle(color: Colors.black),
                      ),
                      backgroundColor: Colors.white,
                      actions: [
                        InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(width: 8),
                        InkWell(
                          onTap: () {
                            chatBox.clear();
                            setState(() {});
                            Navigator.pop(context);
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text(
                                'All message has been deleted',
                                style: TextStyle(color: Colors.black),
                              ),
                              backgroundColor: Colors.white,
                            ));
                          },
                          child: Text(
                            'Clear',
                            style: TextStyle(color: Colors.red),
                          ),
                        )
                      ],
                    );
                  },
                );
              },
              mute: () {},
              Search: () {},
              ChangeWallpaper: () {},
              deleteChat: () {},
              videoCall: () {},
            ),
            SizedBox(width: 10),
          ],
          backgroundColor: ColorConstants.primaryColor,
          title: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Chatprofilescreen(
                      bgimage: DummyDb.chatList[widget.index]['url']!,
                      name: DummyDb.chatList[widget.index]['name']!,
                    ),
                  ));
            },
            child: Row(
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
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          leadingWidth: 30,
        ),
        body: chatBox.isEmpty
            ? ListView(
                children: [
                  greetingMessageCard(),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: ListView.builder(
                        reverse: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: chatBox.length,
                        itemBuilder: (context, index) =>
                            ChatBubble(message: chatBox.get(index)!)),
                  ),
                ],
              ),
      ),
    );
  }

  Padding BottemTextfeild(BuildContext context) {
    return Padding(
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
                maxLines: controller.text.length > 30 ? 3 : 1,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Message',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                  prefixIcon: IconButton(
                      onPressed: () {
                        EmojiPicker(
                          config: Config(
                            height: 256,
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      )),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Container(
              color: Colors.white,
              height: controller.text.length > 30 ? 88 : 48,
              child: controller.text.isNotEmpty
                  ? IconButton(
                      onPressed: () {
                        addMessage(controller.text);
                      },
                      icon: Icon(
                        Icons.send,
                        color: Colors.blue,
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          onPressed: () {
                            showBottomSheet(
                              context: context,
                              builder: (context) {
                                return StatefulBuilder(
                                  builder: (context, setState) => Container(
                                    color: Colors.white,
                                    height: 300,
                                    width: double.infinity,
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(
                            Icons.attach_file,
                            color: Colors.grey,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                      ],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  ChatBubble({super.key, required this.message});
  String message;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(left: 60),
        child: Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Color(0xffeefddf),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                message,
                style: TextStyle(color: Colors.black),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    DateFormat.jm().format(DateTime.now()),
                    style: TextStyle(color: Color(0xff9cd09c)),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.access_time_rounded,
                    color: Color.fromARGB(255, 140, 187, 140),
                    size: 12,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
