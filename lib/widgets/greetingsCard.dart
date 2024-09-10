import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:telegram_clone/utils/image_constants.dart';

class greetingMessageCard extends StatelessWidget {
  const greetingMessageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: 80, vertical: 200),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 10),
            Text(
              'No messages here yet..',
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              'Send a message or tap',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'the greeeting below.',
              style: TextStyle(color: Colors.white),
            ),
            LottieBuilder.asset(ImageConstants.OCTO_ANIMATION)
          ],
        ),
      ),
    );
  }
}
