import 'package:flash_news/utilities/APIs.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../models/news_model.dart';

class ArtNewsController extends GetxController {
  //list all general news

  final ArtNewsList = <Articles>[].obs;

  // A reactive bolean variable to check if data is still loading
  final stillFeatching = false.obs;

  //getconnect from getX
  final _getConnect = GetConnect();

  @override
  void onReady() {
    fetchAllNewsData();

    super.onReady();
  }

  Future<void> fetchAllNewsData() async {
    await fetchGeneralNewsData();
  }

  Future<void> fetchGeneralNewsData() async {
    try {
      stillFeatching.value = true;
      Response response = await _getConnect.get(artNewsAPI);
      update();
      if (response.statusCode == 200) {
        final newsList = (response.body['articles'] as List)
            .map((e) => Articles.fromJson(e))
            .toList();

        if (ArtNewsList.length <= 7) {
          ArtNewsList.assignAll(newsList);
        }
//for testing
        print(ArtNewsList);
        stillFeatching.value = false;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
