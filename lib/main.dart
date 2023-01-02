import 'package:firebase_core/firebase_core.dart';
import 'package:flash_news/firebase_options.dart';
import 'package:flash_news/home_screen.dart';
import 'package:flash_news/screens/auth/profile_screen.dart';
import 'package:flash_news/screens/auth/sign_in.dart';
import 'package:flash_news/screens/auth/sign_up.dart';
import 'package:flash_news/screens/news/fun/fun_news_list.dart';
import 'package:flash_news/screens/news/general/general_newsdetail.dart';
import 'package:flash_news/screens/news/music/music_newslist.dart';
import 'package:flash_news/screens/news/science/science_newslist.dart';
import 'package:flash_news/screens/news/tech/tech_newslist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_bindings.dart';
import 'screens/news/general/general_newslist.dart';
import 'utilities/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppBindings().dependencies();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'flash',
      home: HomeScreen(),
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      // getPages: Routes.flashRoutes,
    );
  }
}
