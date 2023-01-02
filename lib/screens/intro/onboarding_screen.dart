import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utilities/data.dart';
import '../../utilities/my_app_colors.dart';
import '../auth/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    print("OUR SCREEN: ($w , $h)");

    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: const Text(
          "News Category",
          style: TextStyle(
            color: MyAppColors.mainColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1.0,
        actions: [
          IconButton(
            onPressed: () {
              Get.to(ProfileScreen());
            },
            icon: Icon(
              Icons.search,
              color: MyAppColors.mainGreyColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: h * 0.008, vertical: h * 0.08),
          child: GridView.count(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            crossAxisCount: 3,
            crossAxisSpacing: h * 0.006,
            mainAxisSpacing: h * 0.0075,
            childAspectRatio: h / h * 0.6,
            children: List.generate(homeData.length, (index) {
              return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.35), BlendMode.darken),
                    image: AssetImage(homeData[index]['photo']),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Text(
                  homeData[index]['title'],
                  style: TextStyle(
                    fontSize: h * 0.035,
                    fontWeight: FontWeight.bold,
                    color: MyAppColors.appWhite,
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}
