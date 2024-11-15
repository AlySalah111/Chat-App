// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_course_5/wedgits/chat_list.dart';
import 'package:flutter_course_5/wedgits/favorit_contacts.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton.small(
          onPressed:(){},
          child: Icon(Icons.message)),
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            'Chats',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ))
          ],
        ),
        body: Column(
          children: [
            FavoritContacts(),
            SizedBox(
              height: 16,
            ),
            ChatList()
          ],
        ),
      ),
    );
    
  }
}
