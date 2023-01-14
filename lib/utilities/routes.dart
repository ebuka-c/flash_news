import 'package:flash_news/screens/news/art/art_news_list.dart';
import 'package:flash_news/screens/news/economy/economy_news_list.dart';
import 'package:flash_news/screens/news/fun/fun_news_list.dart';
import 'package:flash_news/screens/news/general/general_newslist.dart';
import 'package:flash_news/screens/news/health/health_newsdetails.dart';
import 'package:flash_news/screens/news/health/health_newslist.dart';
import 'package:flash_news/screens/news/music/music_newslist.dart';
import 'package:flash_news/screens/news/science/science_newslist.dart';
import 'package:flash_news/screens/news/sports/sports_newslist.dart';
import 'package:flash_news/screens/news/tech/tech_newslist.dart';
import 'package:get/get.dart';

import '../screens/auth/sign_in.dart';
import '../screens/auth/sign_up.dart';
import '../screens/home/home_screen.dart';

class Routes {
  // List of our pages
  static String home = '/';
  static String signin = '/signin';
  static String signup = '/signup';

  static String getHomeRoute() => home;
  static String getSignInRoute() => signin;
  static String getSignUpRoute() => signup;

  static List<GetPage> flashRoutes = [
    GetPage(name: home, page: () => HomeScreen()),
    GetPage(name: signin, page: () => SignInScreen()),
    GetPage(name: signup, page: () => SignUpScreen()),
  ];
}
