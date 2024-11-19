import 'package:loading_indicator/loading_indicator.dart';
import 'package:mypos/packages/core_package.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPage();
}

class _SplashScreenPage extends State<SplashScreenPage> {
  @override
  void initState() {
    initAsyn();
    super.initState();
    print('test');
  }

  Future initAsyn() async {
    final localCache = LocalCache();

    await Future.delayed(const Duration(seconds: 1));
    Get.offNamed(Routes.mainScreen);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: Container(
          color: Colors.white,
          child: Center(
              child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
            width: 100.w,
            height: 70.h,
            child: const LoadingIndicator(
              indicatorType: Indicator.ballTrianglePathColored,
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple,
              ],
              strokeWidth: 4.0,
              // pathBackgroundColor: showPathBackground ? Colors.black45 : null,
            ),
          )),
        ));
  }
}
