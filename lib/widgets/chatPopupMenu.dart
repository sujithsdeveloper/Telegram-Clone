import 'package:flutter/material.dart';

class ChatPopupMenu extends StatelessWidget {
   ChatPopupMenu({
    super.key,required this.mute, required this.videoCall, required this.Search, required this.ChangeWallpaper, required this.clearHistory, required this.deleteChat,
  });

 final Function() mute;
 final Function() videoCall;
 final Function() Search;
 final Function() ChangeWallpaper;
 final Function() clearHistory;
 final Function() deleteChat;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        iconColor: Colors.white,
        color: Colors.white,
        elevation: 3,
        itemBuilder: (context) => [
              PopupMenuItem(
                onTap: mute,
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
              PopupMenuItem(onTap: videoCall,
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
                onTap: Search,
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
                onTap: ChangeWallpaper,
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
                onTap: clearHistory,
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
                onTap: deleteChat,
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
            ]);
  }
}
