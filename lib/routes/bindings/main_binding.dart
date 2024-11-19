import 'package:get/instance_manager.dart';
import 'package:mypos/controllers/main_controller.dart';

class MainBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MainController>(() => MainController());
  }
}
