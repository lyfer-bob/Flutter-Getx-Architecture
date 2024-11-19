import 'package:mypos/controllers/main_controller.dart';
import 'package:mypos/packages/core_package.dart';

class Components {
  Components._internal();
  static Components instance = Components._internal();
  factory Components() => instance;

  final MainController _ctrl = Get.find();

  AppBar appbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('สาขา: 2601 - สารพัดไทย', style: _appBarTextStyle()),
          Text('| POS ID: 2601 - สารพัดไทย', style: _appBarTextStyle()),
          Text('| CASHIER: ', style: _appBarTextStyle()),
          Text('| SALE MAN: ', style: _appBarTextStyle()),
          Text('| MEMBER: ', style: _appBarTextStyle()),
          Obx(() => Text('| ${_ctrl.dateAppBar}', style: _appBarTextStyle())),
        ],
      ),
      toolbarHeight: 4.h,
      elevation: 3,
    );
  }

  TextStyle _appBarTextStyle() {
    return const TextStyle(
      fontSize: 12,
      color: Color.fromARGB(255, 97, 94, 94),
    );
  }

  String getImgUrl(String url) {
    String result = url
        .replaceAll('[[', 'https://')
        .replaceAll('[', 'http://')
        .replaceAll('=', '/');
    if (result.split('/http://127.0.0.1/').length > 1) {
      result = result.replaceAll('http://127.0.0.1/', '');
    }
    return result;
  }
}
