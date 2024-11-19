import 'package:get/instance_manager.dart';
import 'package:mypos/controllers/receipts_controller.dart';

class ReceiptsBind extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ReceiptsController>(() => ReceiptsController());
  }
}
