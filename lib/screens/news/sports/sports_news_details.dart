import 'package:flutter/material.dart';

import '../../../models/news_model.dart';
import '../../../widgets/news_detail_widget.dart';

class SportsNewsDetailScreen extends StatelessWidget {
  final Articles newsArticle;

  const SportsNewsDetailScreen({Key? key, required this.newsArticle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width.round();
    var h = MediaQuery.of(context).size.height.round();

    return Scaffold(
      body: NewsDetailWidget(
        title: newsArticle
            .title!, //"The world's higest paid footballers and managers in 2020 have been named-GIVEMESPORT",
        imageUrl: newsArticle.urlToImage!, //'assets/images/sport.jpg',
        author: newsArticle.author!, //'Rob Swan',
        dateTime: newsArticle.publishedAt!, //'08 February 2020 10:4am',
        body: newsArticle
            .description!, //"French publication L'Equipe have published their annual list of the current higest paid players and vcoaches in world football.\nLioonel Messi and Cristiano Ronaldo are top of the player's list,which wont come as a huge shock.\nHowever,it may suprise football fans",
      ),
    );
  }
}
