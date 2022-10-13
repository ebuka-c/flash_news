import 'package:flutter/material.dart';

import '../../../utilities/data2.dart';
import '../../../utilities/my_app_colors.dart';
import '../../../widgets/our_button.dart';

class EconomyNews extends StatelessWidget {
  const EconomyNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 68, 67, 67),
        title: Text('ECONOMY NEWS'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              elevation: 4,
              child: Stack(
                children: [
                  Container(
                    height: h * 0.28,
                    width: h * 0.75,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('assets/image/economy.jpg'),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                      margin: EdgeInsets.only(top: 105),
                      color: Colors.black,
                      height: h * 0.14,
                      width: h * 0.75,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 120, left: h * 0.01),
                    child: Text(
                      'assets/image/economy.jpg',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: h * 0.027,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: h * 0.01),
            Column(
              children: List.generate(
                screenData.length,
                (index) {
                  return Column(
                    children: [
                      Material(
                        elevation: 4,
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                // Image: first item in the outer Row
                                Container(
                                  margin: EdgeInsets.only(left: h * 0.01),
                                  height: h * 0.14,
                                  width: h * 0.12,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            screenData[index]['image']),
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(h * 0.02)),
                                ),
                                // Second Item in our Row. Beside the Image
                                Container(
                                  margin: EdgeInsets.only(left: h * 0.01),
                                  width: w - 110,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        screenData[index]['text'] +
                                            screenData[index]['text2'] +
                                            screenData[index]['text3'],
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      SizedBox(height: h * 0.01),
                                      Container(
                                        margin:
                                            EdgeInsets.only(left: h * 0.001),
                                        child: Row(
                                          children: [
                                            OurButton(
                                              text: 'ENTERTAINMENT',
                                              height: h * 0.047,
                                              width: w - 235,
                                              radius: h * 0.009,
                                              fontSize: h * 0.016,
                                            ),
                                            SizedBox(
                                              width: h * 0.006,
                                            ),
                                            Text(
                                              '08 February',
                                              style:
                                                  TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Giving space between the list items
                      SizedBox(height: h * 0.02),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white, //Colors.grey,
        height: h * 0.08,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                color:
                    MyAppColors.mainColor, // Color.fromARGB(255, 99, 49, 180),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.play_circle_outline),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.palette_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
