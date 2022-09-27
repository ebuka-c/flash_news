import 'package:flash_news/utilities/my_app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'News Category',
            style: TextStyle(
              color: MyAppColors.mainColor,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 1.0,
          actions: [
            IconButton(
                onPressed: () {}, icon: Icon(Icons.search), color: Colors.grey)
          ],
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              margin: EdgeInsets.only(left: 40),
              height: 200,
              width: 180,
              decoration: BoxDecoration(
                  color: MyAppColors.mainColorLight,
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      image: AssetImage('assets/image/cake.jpg'),
                      fit: BoxFit.cover)),
              child: Text(
                'Sports',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: MyAppColors.appWhite),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 40),
                  height: 200,
                  width: 180,
                  decoration: BoxDecoration(
                      color: MyAppColors.mainColorLight,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          image: AssetImage('assets/image/cake.jpg'),
                          fit: BoxFit.cover)),
                  child: Text(
                    'Sports',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: MyAppColors.appWhite),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 40),
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                          color: MyAppColors.mainColorLight,
                          borderRadius: BorderRadius.circular(10.0),
                          image: DecorationImage(
                              image: AssetImage('assets/image/cake.jpg'),
                              fit: BoxFit.cover)),
                      child: Text(
                        'Sports',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: MyAppColors.appWhite),
                      ),
                    ),
                  ],
                ),
              ],
            )
          ])
        ]));
  }
}
