import 'package:get/get.dart';

import 'controllers/auth_controller.dart';
import 'controllers/news_controller.dart';

class AppBindings extends Bindings {
  @override
  void dependencies() {
    //depenency injection
    Get.put(Authcontroller(), permanent: true);
    Get.put(NewsController());
    //put: adds or 'puts' the controllers to the app (memory)
  }
}
