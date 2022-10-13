import 'package:flash_news/home_screen.dart';
import 'package:flash_news/screens/auth/sign_in.dart';
import 'package:flash_news/screens/auth/sign_up.dart';
import 'package:flash_news/screens/news/economy/economy_news.dart';
import 'package:flutter/material.dart';

import 'screens/news/general/general_newslist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flash',
      home: const SignUp(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
    );
  }
}
