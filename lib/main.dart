import 'package:flutter/material.dart';
import 'package:flutter_course_5/auth/feature/spalsh_screen.dart';
import 'package:flutter_course_5/auth/pages/login_page.dart';

import 'pages/chat_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:SpalshScreen() ,
    );
  }
}
