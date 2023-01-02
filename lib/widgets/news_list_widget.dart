import 'package:flutter/material.dart';

import '../utilities/my_app_colors.dart';

class NewsListWidget extends StatelessWidget {
  final String titleText;
  final String appBarTitleText;
  final String headerImage;
  final SliverChildDelegate sliverDelegate;

  const NewsListWidget(
      {Key? key,
      required this.titleText,
      required this.headerImage,
      required this.sliverDelegate,
      required this.appBarTitleText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          // floating: true,
          pinned: true,
          // snap: true,
          expandedHeight: h * 0.35,
          backgroundColor: MyAppColors.appWhite,
          centerTitle: true,
          title: Text(
            appBarTitleText,
            style: TextStyle(
                color: MyAppColors.mainColor,
                fontSize: h * 0.03,
                fontWeight: FontWeight.bold),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    headerImage,
                  ),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: h * 0.01, vertical: h * 0.01),
                    color: Colors.black.withOpacity(0.3),
                    child: Text(
                      titleText,
                      style: TextStyle(
                        fontSize: h * 0.025,
                        fontWeight: FontWeight.w700,
                        color: MyAppColors.appWhite,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SliverList(
          delegate: sliverDelegate,
        ),
      ],
    );
  }
}










































































// class NewsListWidget extends StatelessWidget {
//   // final Widget Function(BuildContext, int) builder;
  
//   const NewsListWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             pinned: true,
//             floating: true,
//             snap: false,
//             expandedHeight: 250,
//             title: Text("News In A Flash"),
//             backgroundColor: Colors.teal,
//             flexibleSpace: FlexibleSpaceBar(
//               // title: Text("All Your News In A Flash"),
//               // background: Image.asset('assets/images/economy.jpg', fit: BoxFit.cover,),
//               background: Container(
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/economy.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child: Text(
//                       "All your news in a flash news in a flash news in a flash news in a flash", 
//                       style: TextStyle(color: Colors.red, fontSize: 30),
//                     )
//                   ),
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (context, index) => ListTile(
//                 tileColor: (index%2 == 0)? Colors.grey : Colors.lightBlue,
//                 title: Text("Magical with dynamic no.$index"),
//               ),
//               childCount: 20,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }