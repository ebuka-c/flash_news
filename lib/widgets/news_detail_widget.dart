import 'package:flutter/material.dart';

class NewsDetailWidget extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String author;
  final String dateTime;
  final String body;

  const NewsDetailWidget(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.author,
      required this.dateTime,
      required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: w.toDouble(),
            height: h * 0.3,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl), //AssetImage(imageUrl),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: h * 0.01),
            child: Text(
              title,
              style:
                  TextStyle(fontSize: h * 0.026, fontWeight: FontWeight.w700),
            ),
          ),
          SizedBox(height: h * 0.012),
          Container(
            padding: EdgeInsets.symmetric(horizontal: h * 0.01),
            alignment: Alignment.centerLeft,
            child: Text(
              '$author      $dateTime',
              textAlign: TextAlign.left,
              style:
                  TextStyle(fontSize: h * 0.018, fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: h * 0.012),
          Divider(
            thickness: h * 0.0005,
            color: Colors.grey,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: h * 0.01),
            child: Text(
              body,
              style: TextStyle(fontWeight: FontWeight.w500),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
