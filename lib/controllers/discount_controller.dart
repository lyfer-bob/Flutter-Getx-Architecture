import 'package:mypos/packages/core_package.dart';

class DiscountController extends GetxController {
  DateTime dateTimeNow = DateTime.now();
  Rx<String> formattedDate = ''.obs;
  TextEditingController totalDueCtrl = TextEditingController(text: '0.00');
  double totalDue = 0.01;
  Future<void> init() async {
    totalDueCtrl.text = totalDue.toString();
  }
}
