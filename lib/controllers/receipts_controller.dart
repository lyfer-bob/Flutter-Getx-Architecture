import 'package:mypos/packages/core_package.dart';

class ReceiptsController extends GetxController {
  DateTime dateTimeNow = DateTime.now();
  Rx<String> formattedDate = ''.obs;

  bool isSpashScreen = false;
  void init() {
    isSpashScreen = true;
    updateTime();
  }

  void updateTime() async {
    if (!isSpashScreen) return;
    await Future.delayed(const Duration(seconds: 1));
    dateTimeNow = DateTime.now();
    formattedDate.value =
        DateFormat('dd-MM-yyyy – HH:mm:ss').format(dateTimeNow);
    updateTime();

    // print('formattedDate.value = ${formattedDate.value}');
  }
}
