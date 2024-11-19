import 'package:mypos/routes/bindings/discount_binding.dart';
import 'package:mypos/routes/bindings/main_binding.dart';
import 'package:mypos/routes/bindings/receipts_binding.dart';
import 'package:mypos/routes/bindings/sale_binding.dart';
import 'package:mypos/routes/middlewares/discount_middleware.dart';
import 'package:mypos/routes/middlewares/main_middleware.dart';
import 'package:mypos/routes/middlewares/sale_middleware.dart';
import 'package:mypos/screens/discout_page/discout_page.dart';
import 'package:mypos/screens/main_page/main_page.dart';
import 'package:mypos/screens/receipts_page/receipts_page.dart';
import 'package:mypos/screens/sale_page/sale_page.dart';
import 'package:mypos/screens/splash_screen.dart';
import 'package:mypos/packages/core_package.dart';

class Routes {
  Routes._();
  static const String splashScreen = '/';
  static const String mainScreen = '/main';
  static const String saleScreen = '/sale';
  static const String receiptsScreen = '/receipt';
  static const String discoutSreen = '/discount';
}

class Pages {
  Pages._();
  static final List<GetPage> routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreenPage(),
    ),
    GetPage(
        name: Routes.receiptsScreen,
        page: () => ReceipsPage(),
        binding: ReceiptsBind()),
    GetPage(
        name: Routes.saleScreen,
        middlewares: [SaleMiddleware()],
        page: () => SalePage(),
        binding: SaleBind()),
    GetPage(
      name: Routes.mainScreen,
      middlewares: [MainMiddleware()],
      page: () => MainPage(),
      bindings: [
        // ReceiptsBind(),
        MainBind(),
      ],
    ),
    GetPage(
      name: Routes.discoutSreen,
      page: () => DiscoutPage(),
      middlewares: [DiscountMiddleware()],
      binding: DiscountBind(),
    ),
  ];
}
