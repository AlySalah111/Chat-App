// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_course_5/auth/pages/register_page.dart';
import 'package:flutter_course_5/auth/pages/widgets/text_filed.dart';
import 'package:flutter_course_5/auth/validation.dart';
import 'package:flutter_course_5/pages/chat_screen.dart';
import 'package:flutter_course_5/wedgits/chat_list.dart';

class LogInPage extends StatefulWidget {
  @override
  State<LogInPage> createState() => _LogInPageState();
}

bool obsecureText = true;
var emailController = TextEditingController();
var passowrdController = TextEditingController();
var formKey = GlobalKey<FormState>();

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://img.freepik.com/premium-vector/chat-app-logo-design-template-can-be-used-icon-chat-application-logo_605910-1724.jpg'),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Welcome back to your account',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Email is required';
                        } else if (!emailValidation(value)) {
                          return'invalid Enail Address';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.email, color: Colors.indigoAccent),
                        labelText: 'Email',
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.indigo)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.indigo)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Password is requirerd';
                        } else if (value.length < 6) {
                          return 'pasword must be 6 digits or more';
                        }
                      },
                      obscureText: obsecureText,
                      decoration: InputDecoration(
                        prefixIcon:
                            Icon(Icons.lock, color: Colors.indigoAccent),
                        labelText: 'Passowrd',
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obsecureText = !obsecureText;
                              });
                            },
                            icon: obsecureText
                                ? Icon(Icons.visibility_off)
                                : Icon(Icons.visibility)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.indigo)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.indigo)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.red)),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 45,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigo,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        onPressed: () {
                          if (formKey.currentState!.validate()) {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatScreen()));
                          }
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont Have an Account ?'),
                        TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Text('Creat one '),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
