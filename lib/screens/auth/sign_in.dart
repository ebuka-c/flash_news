import 'package:flutter/material.dart';

import '../../utilities/my_app_colors.dart';
import '../../widgets/our_button.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    print("Screen Height: $h");
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header with icon
            Container(
              height: h * 0.4,
              width: w.toDouble(),
              decoration: BoxDecoration(
                color: MyAppColors.mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(h * 0.18),
                ),
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    MyAppColors.mainColor,
                    MyAppColors.mainColorLight,
                  ],
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(h * 0.12),
                child: Image.asset(
                  'assets/image/logo.png',
                ),
              ),
            ),
            SizedBox(height: h * 0.1),
            // Input Fields
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: h * 0.03),
                  child: Column(
                    children: [
                      // Email
                      Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(h * 0.05),
                        child: TextField(
                          // controller: pass in your controller,
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
                      SizedBox(height: h * 0.03),
                      // Password
                      Material(
                        elevation: 3,
                        borderRadius: BorderRadius.circular(h * 0.05),
                        child: Container(
                          // height: 60,
                          child: TextField(
                            // controller: pass in your controller,
                            autocorrect: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(h * 0.023),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: MyAppColors.mainColor,
                              ),
                              hintText: 'Password',
                              border: InputBorder.none,
                              // contentPadding: EdgeInsets.all( 59),
                              // constraints: BoxConstraints(
                              //   maxWidth: 300,
                              //   minHeight: 100,
                              // ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: h * 0.01),
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: EdgeInsets.only(right: h * 0.02),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password',
                        style: TextStyle(
                          color: MyAppColors.mainColor,
                          fontSize: h * 0.02,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: h * 0.01),
                //Login Button
                OurButton(
                  text: 'LOGIN',
                  height: h * 0.08,
                  width: w - 100,
                  radius: h * 0.05,
                  fontSize: h * 0.03,
                ),
                // CTA texts: signup, don't have account?
                SizedBox(height: h * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an Account?",
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: MyAppColors.mainColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
