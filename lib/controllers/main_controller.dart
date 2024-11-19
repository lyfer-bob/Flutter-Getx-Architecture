import 'package:package_info_plus/package_info_plus.dart';
import 'package:mypos/services/main_service.dart';
import 'package:mypos/packages/core_package.dart';

class MainController extends GetxController {
  DateTime _dateTimeNow = DateTime.now();
  Rx<String> dateMainPage = ''.obs;
  Rx<String> dateAppBar = ''.obs;
  Rx<String> versionWinapp = ''.obs;

  final mainServ = MainService();

  bool isSpashScreen = false;
  Future<void> init() async {
    isSpashScreen = true;
    _updateTime();
    _getParaAndPosFunc();
    _getVersion();
  }

  Future<void> _getVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    versionWinapp.value = packageInfo.version;
  }

  void _updateTime() async {
    await Future.delayed(const Duration(seconds: 1));
    _dateTimeNow = DateTime.now();
    dateMainPage.value =
        DateFormat('dd/MM/yyyy HH:mm:ss').format(_dateTimeNow).toString();
    dateAppBar.value =
        dateMainPage.value.substring(0, dateMainPage.value.length - 3);
    _updateTime();
  }

  Future<void> _getParaAndPosFunc() async {
    String posId = 'MB001';
    await Future.wait([
      mainServ.getPosFunc(),
      mainServ.getPosS(),
      mainServ.getParam(posId),
    ]);
  }
}
