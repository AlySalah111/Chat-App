// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_course_5/auth/pages/login_page.dart';

class SpalshScreen extends StatefulWidget {
  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=>LogInPage())
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: CircleAvatar(
          radius: 60,
          backgroundImage: NetworkImage(
              'https://img.freepik.com/premium-vector/chat-app-logo-design-template-can-be-used-icon-chat-application-logo_605910-1724.jpg'),
        ),
      ),
    );
  }
}
