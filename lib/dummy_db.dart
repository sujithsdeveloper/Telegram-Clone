import 'package:flutter/material.dart';
import 'package:telegram_clone/view/drawer_items/calls.dart';
import 'package:telegram_clone/view/drawer_items/contacts.dart';
import 'package:telegram_clone/view/drawer_items/new_group.dart';
import 'package:telegram_clone/view/drawer_items/peopleNearby.dart';
import 'package:telegram_clone/view/drawer_items/savedMessages.dart';
import 'package:telegram_clone/view/drawer_items/settings.dart';

class DummyDb {
  static const List drawerData = [
    {
      'Label': 'New Group',
      'icon': Icon(
        Icons.group_outlined,
        color: Colors.grey,
      )
    },
    {
      'Label': 'Contacts',
      'icon': Icon(
        Icons.person_outline,
        color: Colors.grey,
      )
    },
    {
      'Label': 'Calls',
      'icon': Icon(
        Icons.call,
        color: Colors.grey,
      )
    },
    {
      'Label': 'People Nearby',
      'icon': Icon(
        Icons.person_pin_circle,
        color: Colors.grey,
      )
    },
    {
      'Label': 'Saved messages',
      'icon': Icon(
        Icons.bookmark_outline,
        color: Colors.grey,
      )
    },
    {
      'Label': 'Settings',
      'icon': Icon(
        Icons.settings_outlined,
        color: Colors.grey,
      )
    },
  ];

  static const chatList = [
  {
    'name': 'Sujith',
    'url': 'https://cdn.pixabay.com/photo/2022/10/17/15/02/photography-7527978_1280.jpg',
    'message': 'Hello there!..',
    'time': '10:00 am',
    'messageNumber': '2'
  },
  {
    'name': 'Alice',
    'url': 'https://cdn.pixabay.com/photo/2018/04/05/09/32/portrait-3292287_1280.jpg',
    'message': 'Hi, how are you?',
    'time': '10:15 am',
    'messageNumber': '1'
  },
  {
    'name': 'Bob',
    'url': 'https://cdn.pixabay.com/photo/2017/03/21/15/08/child-2162410_640.jpg',
    'message': 'I’m doing well, thanks!',
    'time': '10:20 am',
    'messageNumber': '1'
  },
  {
    'name': 'Charlie',
    'url': 'https://cdn.pixabay.com/photo/2022/08/14/10/22/couple-7385502_1280.jpg',
    'message': 'Good morning!',
    'time': '10:25 am',
    'messageNumber': '1'
  },
  {
    'name': 'Diana',
    'url': 'https://cdn.pixabay.com/photo/2020/12/23/03/14/men-5853759_1280.jpg',
    'message': 'Hey, what’s up?',
    'time': '10:30 am',
    'messageNumber': '1'
  },
  {
    'name': 'Eve',
    'url': 'https://cdn.pixabay.com/photo/2023/03/29/19/32/man-7886201_1280.jpg',
    'message': 'Just working on a project.',
    'time': '10:35 am',
    'messageNumber': '1'
  },
  {
    'name': 'Frank',
    'url': 'https://cdn.pixabay.com/photo/2022/07/04/04/37/musician-7300353_960_720.jpg',
    'message': 'Sounds interesting!',
    'time': '10:40 am',
    'messageNumber': '1'
  },
  {
    'name': 'Grace',
    'url': 'https://cdn.pixabay.com/photo/2021/02/19/02/50/man-6029064_640.jpg',
    'message': 'Are you free this weekend?',
    'time': '10:45 am',
    'messageNumber': '1'
  },
  {
    'name': 'Hank',
    'url': 'https://cdn.pixabay.com/photo/2021/06/06/09/04/bridge-6314795_640.jpg',
    'message': 'I might be, what’s up?',
    'time': '10:50 am',
    'messageNumber': '1'
  },
  {
    'name': 'Ivy',
    'url': 'https://cdn.pixabay.com/photo/2019/05/09/15/23/nature-4191369_960_720.jpg',
    'message': 'We could meet up for coffee.',
    'time': '10:55 am',
    'messageNumber': '1'
  },
  {
    'name': 'Jack',
    'url': 'https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_640.jpg',
    'message': 'Sounds good to me!',
    'time': '11:00 am',
    'messageNumber': '1'
  },
  {
    'name': 'Kara',
    'url': 'https://cdn.pixabay.com/photo/2023/06/27/10/51/man-8091933_640.jpg',
    'message': 'I’m in! What time?',
    'time': '11:05 am',
    'messageNumber': '1'
  },
  {
    'name': 'Leo',
    'url': 'https://cdn.pixabay.com/photo/2016/11/22/19/12/fog-1850099_640.jpg',
    'message': 'How about 2 PM?',
    'time': '11:10 am',
    'messageNumber': '1'
  },
  {
    'name': 'Mona',
    'url': 'https://cdn.pixabay.com/photo/2023/05/13/19/36/woman-7991234_1280.jpg',
    'message': '2 PM works for me.',
    'time': '11:15 am',
    'messageNumber': '1'
  },
  {
    'name': 'Nina',
    'url': 'https://cdn.pixabay.com/photo/2023/03/05/23/46/girl-7832385_1280.jpg',
    'message': 'Great, see you then!',
    'time': '11:20 am',
    'messageNumber': '1'
  },
  {
    'name': 'Oscar',
    'url': 'https://cdn.pixabay.com/photo/2023/05/21/19/16/woman-8009216_640.jpg',
    'message': 'Can’t wait!',
    'time': '11:25 am',
    'messageNumber': '1'
  },
  {
    'name': 'Paul',
    'url': 'https://cdn.pixabay.com/photo/2020/03/11/15/16/friends-4922436_640.jpg',
    'message': 'I’ll bring some snacks.',
    'time': '11:30 am',
    'messageNumber': '1'
  },
  {
    'name': 'Quinn',
    'url': 'https://cdn.pixabay.com/photo/2016/11/14/04/25/umbrella-1822586_640.jpg',
    'message': 'I’ll handle the drinks.',
    'time': '11:35 am',
    'messageNumber': '1'
  },
  {
    'name': 'Rita',
    'url': 'https://cdn.pixabay.com/photo/2017/02/26/02/37/girl-2099363_640.jpg',
    'message': 'Perfect, see you all soon!',
    'time': '11:40 am',
    'messageNumber': '1'
  },
  {
    'name': 'Sam',
    'url': 'https://cdn.pixabay.com/photo/2014/12/16/22/25/sunset-570881_640.jpg',
    'message': 'Looking forward to it!',
    'time': '11:45 am',
    'messageNumber': '1'
  },
  {
    'name': 'Tina',
    'url': 'https://cdn.pixabay.com/photo/2022/04/25/05/48/rain-7155121_640.jpg',
    'message': 'It’s going to be fun!',
    'time': '11:50 am',
    'messageNumber': '1'
  }
];


  static List drawerItemScreensList = [
    NewGroup(),
    Contacts(),
    Calls(),
    Peoplenearby(),
    SavedMessages(),
    Settings()
  ];

  static const List settingsItemsList = [
    {
      'icon': Icon(
        Icons.message_outlined,
        color: Colors.grey,
      ),
      'label': 'Chat Settings'
    },
    {
      'icon': Icon(
        Icons.lock_outline,
        color: Colors.grey,
      ),
      'label': 'Privacy and Security'
    },
    {
      'icon': Icon(
        Icons.notifications_outlined,
        color: Colors.grey,
      ),
      'label': 'Notification and Sound'
    },
    {
      'icon': Icon(
        Icons.data_saver_off_sharp,
        color: Colors.grey,
      ),
      'label': 'Data and Storage'
    },
    {
      'icon': Icon(
        Icons.battery_charging_full_sharp,
        color: Colors.grey,
      ),
      'label': 'Power saving'
    },
    {
      'icon': Icon(
        Icons.folder_outlined,
        color: Colors.grey,
      ),
      'label': 'Chat folders'
    },
    {
      'icon': Icon(
        Icons.devices,
        color: Colors.grey,
      ),
      'label': 'Devices'
    },
    {
      'icon': Icon(
        Icons.language,
        color: Colors.grey,
      ),
      'label': 'Language'
    },
  ];
}
