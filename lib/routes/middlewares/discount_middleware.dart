import 'package:mypos/controllers/discount_controller.dart';
import 'package:mypos/packages/core_package.dart';

class DiscountMiddleware extends GetMiddleware {
  @override
  Widget onPageBuilt(Widget page) {
    Get.find<DiscountController>().init();
    return super.onPageBuilt(page);
  }
}
