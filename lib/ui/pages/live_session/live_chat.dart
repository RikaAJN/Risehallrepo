import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'widget/chat_box.dart';

class LiveChat extends StatelessWidget {
  const LiveChat({key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        shrinkWrap: true,
        cacheExtent: 100,
        children: [
          ReciverMessage(
            message:
                'We would be discussing the topic of the day and answering your questions in the chat box or you can ask your questions in the Q&A section',
          ),
          ReciverMessage(
            message:
                'Kindly let us know if you have any questions or suggestions for the next session',
          ),
          SenderMessage(
            message: "Thanks for the session, it was really helpful",
          ),
          SenderMessage(
            message: "It was really helpful and informative session ",
          ),
          SenderMessage(
            message:
                "OMG, I am so excited for the next session, it was really helpful and informative session ",
          ),
           SenderMessage(
            message: "I dropped a question in the Q&A section, kindly answer it",
          ),
           SenderMessage(
            message: "Thank you for the session, it was really helpful",
          ),
        ],
      ),
    );
  }
}
