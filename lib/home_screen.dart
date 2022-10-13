import 'package:flash_news/utilities/data.dart';
import 'package:flash_news/utilities/my_app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    print('our screen ($w, $h)');

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
        body: SingleChildScrollView(
          child: Container(
              margin: EdgeInsets.symmetric(
                  horizontal: h * 0.01, vertical: h * 0.01),
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: h * 0.006,
                mainAxisSpacing: h * 0.0075,
                childAspectRatio: h / h * 0.7,
                children: List.generate(homedata.length, (index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: AssetImage(homedata[index]['photo']),
                            colorFilter: ColorFilter.mode(
                                Colors.black.withOpacity(0.35),
                                BlendMode.darken),
                            fit: BoxFit.cover)),
                    child: Text(homedata[index]['title'],
                        style: TextStyle(
                            fontSize: 20,
                            color: MyAppColors.appWhite,
                            fontWeight: FontWeight.bold)),
                  );
                }),
              )),
        ));
  }
}
