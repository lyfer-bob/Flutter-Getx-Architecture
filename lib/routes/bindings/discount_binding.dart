import 'package:get/instance_manager.dart';
import 'package:mypos/controllers/discount_controller.dart';

class DiscountBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiscountController>(() => DiscountController());
  }
}
