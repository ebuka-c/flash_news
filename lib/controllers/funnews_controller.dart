import 'package:flash_news/utilities/APIs.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../models/news_model.dart';

class FunNewsController extends GetxController {
  //list all general news

  final FunNewsList = <Articles>[].obs;

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
      Response response = await _getConnect.get(funNewsAPI);
      update();
      if (response.statusCode == 200) {
        final newsList = (response.body['articles'] as List)
            .map((e) => Articles.fromJson(e))
            .toList();

        if (FunNewsList.length <= 7) {
          FunNewsList.assignAll(newsList);
        }
//for testing
        print(FunNewsList);
        stillFeatching.value = false;
      }
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }
}
