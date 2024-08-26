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
      'url':
          'https://pixabay.com/illustrations/ai-generated-man-portrait-model-8649790/',
      'message': 'Hello there!..',
      'time': '10:00 am'
    },
    {
      'name': 'Alice',
      'url':
          'https://pixabay.com/photos/woman-beautiful-outdoors-person-1869158/',
      'message': 'Hi, how are you?',
      'time': '10:15 am'
    },
    {
      'name': 'Bob',
      'url':
          'https://cdn.pixabay.com/photo/2017/03/21/15/08/child-2162410_640.jpg',
      'message': 'I’m doing well, thanks!',
      'time': '10:20 am'
    },
    {
      'name': 'Charlie',
      'url':
          'https://pixabay.com/photos/human-man-gentleman-masculine-3782189/',
      'message': 'Good morning!',
      'time': '10:25 am'
    },
    {
      'name': 'Diana',
      'url':
          'https://pixabay.com/photos/girl-woman-beauty-portrait-female-4655079/',
      'message': 'Hey, what’s up?',
      'time': '10:30 am'
    },
    {
      'name': 'Eve',
      'url':
          'https://pixabay.com/photos/man-sitting-city-view-skyline-2179243/',
      'message': 'Just working on a project.',
      'time': '10:35 am'
    },
    {
      'name': 'Frank',
      'url':
          'https://pixabay.com/photos/woman-blond-make-up-young-girl-3055841/',
      'message': 'Sounds interesting!',
      'time': '10:40 am'
    },
    {
      'name': 'Grace',
      'url':
          'https://pixabay.com/photos/musician-street-music-man-person-7300353/',
      'message': 'Are you free this weekend?',
      'time': '10:45 am'
    },
    {
      'name': 'Hank',
      'url':
          'https://pixabay.com/photos/woman-portrait-painting-person-4609514/',
      'message': 'I might be, what’s up?',
      'time': '10:50 am'
    },
    {
      'name': 'Ivy',
      'url':
          'https://pixabay.com/photos/woman-flowers-field-meadow-dress-5948094/',
      'message': 'We could meet up for coffee.',
      'time': '10:55 am'
    },
    {
      'name': 'Jack',
      'url': 'https://pixabay.com/photos/man-fall-action-falling-1838330/',
      'message': 'Sounds good to me!',
      'time': '11:00 am'
    },
    {
      'name': 'Kara',
      'url':
          'https://pixabay.com/photos/face-guy-model-handsome-male-man-1869641/',
      'message': 'I’m in! What time?',
      'time': '11:05 am'
    },
    {
      'name': 'Leo',
      'url':
          'https://pixabay.com/photos/man-silhouette-beach-sunset-dusk-1835195/',
      'message': 'How about 2 PM?',
      'time': '11:10 am'
    },
    {
      'name': 'Mona',
      'url':
          'https://pixabay.com/photos/man-ocean-sea-hat-scarf-jacket-792821/',
      'message': '2 PM works for me.',
      'time': '11:15 am'
    },
    {
      'name': 'Nina',
      'url':
          'https://pixabay.com/photos/man-retro-vintage-portrait-gloves-4123268/',
      'message': 'Great, see you then!',
      'time': '11:20 am'
    },
    {
      'name': 'Oscar',
      'url': 'https://pixabay.com/photos/portrait-people-adult-africa-3157821/',
      'message': 'Can’t wait!',
      'time': '11:25 am'
    },
    {
      'name': 'Paul',
      'url':
          'https://pixabay.com/photos/happy-man-adult-city-face-guy-1836445/',
      'message': 'I’ll bring some snacks.',
      'time': '11:30 am'
    },
    {
      'name': 'Quinn',
      'url':
          'https://pixabay.com/photos/cap-boy-smile-tomboy-emotions-2923682/',
      'message': 'I’ll handle the drinks.',
      'time': '11:35 am'
    },
    {
      'name': 'Rita',
      'url':
          'https://pixabay.com/photos/portrait-man-male-person-adult-2194457/',
      'message': 'Perfect, see you all soon!',
      'time': '11:40 am'
    },
    {
      'name': 'Sam',
      'url':
          'https://pixabay.com/photos/vietnam-sky-dolphin-nose-mountain-7898501/',
      'message': 'Looking forward to it!',
      'time': '11:45 am'
    },
    {
      'name': 'Tina',
      'url':
          'https://pixabay.com/photos/silhouette-lake-sky-dark-person-4940445/',
      'message': 'It’s going to be fun!',
      'time': '11:50 am'
    }
  ];

  static const List drawerItemScreensList = [
    NewGroup(),
    Contacts(),
    Calls(),
    Peoplenearby(),
    SavedMessages(),
    Settings()
  ];

  static const List settingsItemsList=[
    {
      'icon':Icon(Icons.message_outlined,color: Colors.grey,),
      'label':'Chat Settings'
    },
    {
      'icon':Icon(Icons.lock_outline,color: Colors.grey,),
      'label':'Privacy and Security'
    },{
      'icon':Icon(Icons.notifications_outlined,color: Colors.grey,),
      'label':'Notification and Sound'
    },{
      'icon':Icon(Icons.data_saver_off_sharp,color: Colors.grey,),
      'label':'Data and Storage'
    },{
      'icon':Icon(Icons.battery_charging_full_sharp,color: Colors.grey,),
      'label':'Power saving'
    },
    {
      'icon':Icon(Icons.folder_outlined,color: Colors.grey,),
      'label':'Chat folders'
    },{
      'icon':Icon(Icons.devices,color: Colors.grey,),
      'label':'Devices'
    },{
      'icon':Icon(Icons.language,color: Colors.grey,),
      'label':'Language'
    },
  ];
}
