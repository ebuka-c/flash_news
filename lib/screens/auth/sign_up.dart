import 'package:flutter/material.dart';

import '../../utilities/my_app_colors.dart';
import '../../widgets/our_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 0.05,
                  child: ShaderMask(
                      child: Image(
                        image: AssetImage(
                          'assets/image/logo.png',
                        ),
                      ),
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(colors: [
                          Colors.black,
                          MyAppColors.mainColorLight,
                        ]).createShader(bounds);
                      }),
                )
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 90),
              child: Column(
                children: [
                  ShaderMask(
                      child: Image.asset(
                        'assets/image/logo.png',
                        width: w * 0.29,
                      ),
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(colors: [
                          MyAppColors.mainColor,
                          MyAppColors.mainColorLight,
                        ]).createShader(bounds);
                      }),
                  SizedBox(
                    height: h * 0.07,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: h * 0.03),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(h * 0.05),
                      shadowColor: Colors.black,
                      child: TextField(
                        autocorrect: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(h * 0.023),
                          prefixIcon: Icon(
                            Icons.email,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Email',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: h * 0.03),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(h * 0.05),
                      shadowColor: Colors.black,
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(h * 0.023),
                          prefixIcon: Icon(
                            Icons.person,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Username',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: h * 0.03),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(h * 0.05),
                      shadowColor: Colors.black,
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(h * 0.023),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.05,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: h * 0.03),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(h * 0.05),
                      shadowColor: Colors.black,
                      child: TextField(
                        autocorrect: true,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(h * 0.023),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: MyAppColors.mainColor,
                          ),
                          hintText: 'Confirm Password',
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: h * 0.06,
                  ),
                  //Sign Up Button
                  OurButton(
                    text: 'SignUp',
                    height: h * 0.08,
                    width: w - 100,
                    radius: h * 0.05,
                    fontSize: h * 0.03,
                  ),
                  SizedBox(
                    height: h * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account?",
                        style: TextStyle(fontSize: h * 0.02),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: MyAppColors.mainColor,
                              fontWeight: FontWeight.bold,
                              fontSize: h * 0.02),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: h * 0.03),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
