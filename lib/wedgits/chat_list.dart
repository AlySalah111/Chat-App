// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_course_5/models/chat_model.dart';
import 'package:flutter_course_5/wedgits/chat_list.dart';

class ChatList extends StatelessWidget {
  const ChatList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      padding: EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(chats[index].image),
                      radius: 30,
                      backgroundColor: Colors.amber,
                    ),
                    Positioned(
                      bottom: 0, right: 2,
                      child: CircleAvatar(
                        radius: 9,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: Colors.green,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chats[index].name.split(' ')[0],
                      ),
                      Text(chats[index].mssg)
                    ],
                  ),
                ),
                Text(chats[index].time),
              ],
            ),
          );
        },
      ),
    ));
  }
}
