import 'package:mypos/controllers/discount_controller.dart';
import 'package:mypos/packages/core_package.dart';

class DiscoutPage extends StatelessWidget {
  final DiscountController ctrl = Get.find();

  DiscoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        // appBar: Components.instance.appbar(),
        body: Container(
          width: 100.w,
          height: 100.h,
          margin: EdgeInsets.only(left: 4.w, top: 2.h, right: 4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 5.h),
                child: const Text(
                  'ป้อนรายการรับชำระเงิน',
                  style: TextStyle(
                    fontSize: 32,
                    color: Colors.black,
                  ),
                ),
              ),
              Row(
                children: [
                  Flexible(flex: 50, child: Column(
                    children: [
                      _functionLeftColum(),
                      _functionLeftColum(),
                      _functionLeftColum(),
                    ],
                  )),
                  const Flexible(flex: 70, child: Text('')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row _functionLeftColum() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 2.5.w),
              child: const Text(
                'รวมยอดที่ต้องชำระ',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 77, 152, 209),
                ),
              ),
            ),
            const Text(
              'TOTAL DUE',
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 77, 152, 209),
              ),
            ),
          ],
        ),
        textFormFiled(
          controller: ctrl.totalDueCtrl,
          color: const Color(0xFFDBEEF4),
        )
      ],
    );
  }

  Widget textFormFiled({
    required TextEditingController controller,
    required Color color,
  }) {
    return Expanded(
      child: Container(
        height: 7.h,
        alignment: Alignment.centerRight,
        color: color,
        child: TextFormField(
          style: const TextStyle(fontSize: 25),
          textAlign: TextAlign.right,
          autovalidateMode: AutovalidateMode.always,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(color: Colors.grey, width: 0.5),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(color: Colors.grey, width: 0.5),
            ),
            labelStyle: const TextStyle(color: Colors.black54),
            hintStyle: const TextStyle(color: Colors.black26),
          ),
          controller: controller,
        ),
      ),
    );
  }
}
