import 'package:mypos/controllers/main_controller.dart';
import 'package:mypos/packages/core_package.dart';

class MainPage extends StatelessWidget {
  final MainController ctrl = Get.find();

  MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: Components.instance.appbar(),
        body: Container(
          color: const Color.fromARGB(255, 224, 210, 225),
          width: 100.w,
          height: 100.h,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _header(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _mainFunction('tax_invoice'),
                  _mainFunction('price_check'),
                  _mainFunction('shift_report'),
                ],
              ),
              SizedBox(height: 5.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _mainFunction('end_day'),
                  _mainFunction(
                    'cashier',
                    onTab: () => Get.toNamed(Routes.saleScreen),
                  ),
                  _mainFunction('exit'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _header() {
    return Column(
      children: [
        SizedBox(height: 3.h),
        RichText(
          text: const TextSpan(
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 45,
                fontFamily: 'Arial',
              ),
              children: [
                TextSpan(
                  text: 'Geniuz',
                  style: TextStyle(
                    color: Color(0xFF5fc2eb),
                  ),
                ),
                TextSpan(
                  text: 'POS Front office',
                  style: TextStyle(
                    color: Color(0xFF4c88ee),
                  ),
                ),
              ]),
        ),
        const Text(
          'MAIN MENU',
          style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(255, 77, 152, 209),
          ),
        ),
        Container(
          width: 18.w,
          height: 25,
          alignment: Alignment.center,
          color: Colors.white,
          child: Obx(() => Text(
                ctrl.dateMainPage.value,
                style: const TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(255, 45, 45, 45),
                ),
              )),
        ),
        SizedBox(height: 5.h),
      ],
    );
  }

  Container _logoAndConfig() {
    return Container(
      height: 30.h,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/signin_logo.png',
            scale: 2,
          ),
          _mainFunction('config'),
        ],
      ),
    );
  }

  Widget _footer() {
    return SizedBox(
      width: 100.w,
      height: 30.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 73.w,
            alignment: Alignment.center,
            color: Colors.white,
            child: FittedBox(
              child: Text(
                'ขณะนี้ท่านกำลังท่านกำลังทำงานกับข้อมูล จีเนียสช้อป สาขา 26001 -  สารพัดไทย บนเครื่อง POS หมายเลข 9105',
                style: _footerTextStyle(),
              ),
            ),
          ),
          SizedBox(height: 5.h),
          Obx(
            () => Text(
                'GeniuzPOS FRONT OFFICE VERSION ${ctrl.versionWinapp.value} ENTERPRISE EDITION',
                style: _footerTextStyle()
                // fontFamily: 'Arial',
                ),
          ),
          Text(
            'REGISTERED TO CITYSOFT INFOTECH CO.,LTD. AUTHORIZED TO CITYSOFT INFOTECH CO.,LTD.',
            style: _footerTextStyle(),
          )
        ],
      ),
    );
  }

  TextStyle _footerTextStyle() {
    return const TextStyle(
      fontSize: 13,
      color: Color.fromARGB(255, 45, 45, 45),
    );
  }

  Widget _mainFunction(String iconPathName, {Function()? onTab}) {
    return GestureDetector(
      onTap: onTab ?? () => print('action = $iconPathName'),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            scale: 2,
            image: AssetImage('assets/icons/home_page/$iconPathName.png'),
          ),
          shape: BoxShape.circle,
        ),
        alignment: Alignment.center,
        width: 10.w,
        height: 10.w,
      ),
    );
  }
}
