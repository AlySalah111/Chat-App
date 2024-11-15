// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_course_5/models/chat_model.dart';
import 'package:flutter_course_5/wedgits/chat_list.dart';
class FavoritContacts extends StatelessWidget {
  const FavoritContacts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Favorite contacs',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 15,),
      
          SizedBox(height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
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
                      SizedBox(height: 10,
                      ),
                      Text(
                        chats[index].name,
                      style:TextStyle(color: Colors.white) 
                      ,)
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                 return SizedBox(
                    width: 10,
                  );
                },
                itemCount:chats.length,
                ),
          )
        ],
      ),
    );
  }
}
