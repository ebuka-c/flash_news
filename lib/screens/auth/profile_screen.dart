import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/auth_controller.dart';
import '../../utilities/my_app_colors.dart';
import '../../widgets/switch_icon.dart';
import '../../widgets/text_num_widget.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  Authcontroller authController = Get.find<Authcontroller>();

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 204, 181, 181),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w * 0.03),
          child: Column(
            children: [
              SizedBox(height: h * 0.06),
              Container(
                child: Row(
                  children: [
                    // the image
                    CircleAvatar(
                      foregroundImage: AssetImage('assets/images/sport.jpg'),
                      radius: h * 0.07,
                    ),
                    SizedBox(width: w * 0.05),
                    // the username & email
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'TheAlphanumeric',
                          style: TextStyle(
                            fontSize: h * 0.03,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: h * 0.018),
                        Container(
                          width: w * 0.5,
                          child: Text(
                            'yourRealemailHere@gmail.com',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: h * 0.019,
                              // fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: w * 0.05, vertical: h * 0.03),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextNumWidget(number: '826', text: 'Followers'),
                    TextNumWidget(number: '251', text: 'Following'),
                    TextNumWidget(number: '81K', text: 'News Read'),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Divider(
                thickness: 2,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: h * 0.03),
                child: Column(
                  children: [
                    SwitchIconWidget(
                      icon: Icon(
                        Icons.lightbulb_outline,
                        size: h * 0.035,
                      ),
                      iconText: 'Night',
                    ),
                    SizedBox(
                      height: h * 0.035,
                    ),
                    SwitchIconWidget(
                      icon: Icon(
                        Icons.notifications,
                        size: h * 0.035,
                      ),
                      iconText: 'Notification',
                    ),
                    SizedBox(
                      height: h * 0.035,
                    ),
                    SwitchIconWidget(
                      icon: Icon(
                        Icons.share,
                        size: h * 0.035,
                      ),
                      iconText: 'Social Media',
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
              ),
              SizedBox(
                height: h * 0.03,
              ),
              InkWell(
                onTap: () {
                  authController.logoutUser();
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.logout_rounded,
                      size: h * 0.03,
                      color: MyAppColors.mainColor,
                    ),
                    SizedBox(width: h * 0.01),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: h * 0.02,
                        fontWeight: FontWeight.w700,
                        color: MyAppColors.mainColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
