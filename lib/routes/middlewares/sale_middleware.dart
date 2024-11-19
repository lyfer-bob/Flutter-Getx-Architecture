import 'package:mypos/controllers/sale_controller.dart';
import 'package:mypos/packages/core_package.dart';

class SaleMiddleware extends GetMiddleware {
  @override
  Widget onPageBuilt(Widget page) {
    Get.find<SaleController>().init();
    return super.onPageBuilt(page);
  }
}
