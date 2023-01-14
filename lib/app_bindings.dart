import 'package:flash_news/controllers/artnews_controller.dart';
import 'package:flash_news/controllers/econews_controller.dart';
import 'package:flash_news/controllers/funnews_controller.dart';
import 'package:flash_news/controllers/healthnews_controller.dart';
import 'package:flash_news/controllers/musicnews_controller.dart';
import 'package:flash_news/controllers/sciencenews_controller.dart';
import 'package:flash_news/controllers/sportsnews_controller.dart';
import 'package:flash_news/controllers/technews_controller.dart';
import 'package:get/get.dart';

import 'controllers/auth_controller.dart';
import 'controllers/generalnews_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    //depenency injection
    Get.put(Authcontroller(), permanent: true);
    Get.put(GeneralNewsController());
    Get.put(EconomyNewsController());
    Get.put(SportsNewsController());
    Get.put(FunNewsController());
    Get.put(HealthNewsController());
    Get.put(MusicNewsController());
    Get.put(ScienceNewsController());
    Get.put(ArtNewsController());
    Get.put(TechNewsController());

    //put: adds or 'puts' the controllers to the app (memory)
  }
}
