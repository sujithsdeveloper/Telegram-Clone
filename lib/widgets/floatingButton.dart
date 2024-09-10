
import 'package:flutter/material.dart';
import 'package:telegram_clone/utils/color_constants.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(
        Icons.edit,
        color: Colors.white,
      ),
      backgroundColor: ColorConstants.primaryColor,
      shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    );
  }
}
