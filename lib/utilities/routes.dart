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
  static List<GetPage> flashRoutes = [
    // homes screen
    GetPage(
      name: HomeScreen.routeName,
      page: () => const HomeScreen(),
    ),

    // signIn screen
    GetPage(
      name: SignInScreen.routeName,
      page: () => SignInScreen(),
    ),

    // SignUp screen
    GetPage(
      name: SignUpScreen.routeName,
      page: () => SignUpScreen(),
    ),

    GetPage(
      name: TechNewsListScreen.routeName,
      page: () => TechNewsListScreen(),
    ),

    GetPage(
      name: EconomyNewsListScreen.routeName,
      page: () => EconomyNewsListScreen(),
    ),
    GetPage(
      name: SportsNewsListScreen.routeName,
      page: () => SportsNewsListScreen(),
    ),
    GetPage(
      name: HealthNewsList.routeName,
      page: () => HealthNewsList(),
    ),
    GetPage(
      name: FunNewsListScreen.routeName,
      page: () => FunNewsListScreen(),
    ),

    GetPage(
      name: ScienceNewsListScreen.routeName,
      page: () => ScienceNewsListScreen(),
    ),
    GetPage(
      name: GeneralNewsList.routeName,
      page: () => GeneralNewsList(),
    ),
    GetPage(
      name: MusicNewsListScreen.routeName,
      page: () => MusicNewsListScreen(),
    ),
    GetPage(
      name: ArtNewsListScreen.routeName,
      page: () => ArtNewsListScreen(),
    ),
  ];
}
