import 'package:get/instance_manager.dart';
import 'package:mypos/controllers/sale_controller.dart';

class SaleBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SaleController>(() => SaleController());
  }
}
