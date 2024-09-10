import 'package:flutter/material.dart';

class profilePopupMenuButton extends StatelessWidget {
  const profilePopupMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      iconColor: Colors.white,
      color: Colors.white,
      position: PopupMenuPosition.under,
      itemBuilder: (context) {
        return [
          PopupMenuItem(
            child: Row(
              children: [
                Icon(
                  Icons.share,
                ),
                SizedBox(width: 9),
                Text(
                  'Share Contact',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
          PopupMenuItem(
              child: Row(
            children: [
              Icon(
                Icons.block,
              ),
              SizedBox(width: 9),
              Text(
                'Block User',
                style: TextStyle(color: Colors.black),
              )
            ],
          )),
          PopupMenuItem(
              child: Row(
            children: [
              Icon(
                Icons.edit,
              ),
              SizedBox(width: 9),
              Text(
                'Edit contact',
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
                'Delete Contact',
                style: TextStyle(color: Colors.black),
              )
            ],
          )),
          PopupMenuItem(
              child: Row(
            children: [
              Icon(
                Icons.card_giftcard_outlined,
              ),
              SizedBox(width: 9),
              Text(
                'Gift premium',
                style: TextStyle(color: Colors.black),
              )
            ],
          )),
          PopupMenuItem(
              child: Row(
            children: [
              Icon(
                Icons.lock,
              ),
              SizedBox(width: 9),
              Text(
                'Start secret chat',
                style: TextStyle(color: Colors.black),
              )
            ],
          )),
          PopupMenuItem(
              child: Row(
            children: [
              Icon(
                Icons.add_home_outlined,
              ),
              SizedBox(width: 9),
              Text(
                'Add to home screen ',
                style: TextStyle(color: Colors.black),
              )
            ],
          )),
          PopupMenuItem(
              child: Row(
            children: [
              Icon(
                Icons.save_alt_outlined,
              ),
              SizedBox(width: 9),
              Text(
                'Save to gallery',
                style: TextStyle(color: Colors.black),
              )
            ],
          )),
        ];
      },
    );
  }
}
