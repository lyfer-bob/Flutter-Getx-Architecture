import 'package:mypos/controllers/main_controller.dart';
import 'package:mypos/packages/core_package.dart';

class MainMiddleware extends GetMiddleware {
  @override
  Widget onPageBuilt(Widget page) {
    Get.find<MainController>().init();
    return super.onPageBuilt(page);
  }

  @override
  void onPageDispose() {
    // print('PageDisposed');
    super.onPageDispose();
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    // print('onPageCalled');
    return super.onPageCalled(page);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    //  print('Bindings of ${page.toString()} are ready');

    return super.onPageBuildStart(page);
  }
}
