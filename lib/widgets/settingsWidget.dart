import 'package:flutter/material.dart';

class SettingsCard extends StatelessWidget {
  SettingsCard({super.key, required this.title, required this.caption});
  String title;
  String caption;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.black, fontSize: 17),
        ),
        Text(
          caption,
          style: TextStyle(color: Colors.grey),
        )
      ],
    );
  }
}
