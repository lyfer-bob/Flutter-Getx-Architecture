import 'package:mypos/controllers/sale_controller.dart';
import 'package:mypos/packages/core_package.dart';

class SalePage extends StatelessWidget {
  final SaleController ctrl = Get.find();
  SalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        appBar: Components.instance.appbar(),
        body: SizedBox(
          width: 100.w,
          height: 100.h,
          child: Column(
            children: [
              _groupHeaderFunction(),
              Container(
                  alignment: Alignment.centerRight,
                  height: 36.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _detailOrderAndAnotherFunc(),
                            _detailOrderAndSumPrice(),
                            _inputTextFieldAndQtys(),
                          ],
                        ),
                      ),
                      _functionCouponChargeDiscountAndOhther(),
                      _numberPanelAndNumberFunc(),
                      _functionColumnLeft(),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _detailOrderAndAnotherFunc() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 237, 227, 227),
          width: 1.5,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            // height: 5.h,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'รายการสินค้า',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.5,
                  ),
                ),
                Text(
                  'ซื้อ 1 แถม 1 ในสินค้ารหัสเดียวกัน',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.5,
                  ),
                ),
              ],
            ),
          ),
          _anothersFunction(
            width: 5.5.w,
            height: 5.5.h,
            'special',
            Colors.transparent,
            sacale: 4.5,
          ),
        ],
      ),
    );
  }

  Widget _detailOrderAndSumPrice() {
    return Container(
      padding: EdgeInsets.only(right: 1.w),
      decoration: BoxDecoration(
          border: Border(
        left: _borderSide(1.5, Color.fromARGB(255, 237, 227, 227)),
        right: _borderSide(1.5, Color.fromARGB(255, 237, 227, 227)),
        bottom: _borderSide(1.5, Color.fromARGB(255, 237, 227, 227)),
      )),
      height: 7.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            height: 7.h,
            child: Text(
              '4 รายการ 4.00 รวมเงิน',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.5,
              ),
            ),
          ),
          Text(
            '7,200.00',
            style: TextStyle(
              color: Colors.black,
              fontSize: 33,
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputTextFieldAndQtys() {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        left: _borderSide(1.5, Color.fromARGB(255, 237, 227, 227)),
        right: _borderSide(1.5, Color.fromARGB(255, 237, 227, 227)),
        bottom: _borderSide(1.5, Color.fromARGB(255, 237, 227, 227)),
      )),
      height: 7.h,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 7.h,
            alignment: Alignment.centerRight,
            child: Text(
              'ป้อนข้อมูล',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12.5,
              ),
            ),
          ),
          Text(
            'จำนวน',
            style: TextStyle(
              color: Colors.black,
              fontSize: 12.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _functionCouponChargeDiscountAndOhther() {
    return Row(
      children: [
        Column(
          children: [
            _anothersFunction(
              'charge_perc',
              const Color(0xFFC5E0B5),
              sacale: 4.5,
            ),
            _anothersFunction(
              'charge',
              const Color(0xFFC5E0B5),
              sacale: 4.5,
            ),
            _anothersFunction(
              'special',
              const Color(0xFFC5E0B5),
              sacale: 4.5,
            ),
            _anothersFunction(
              'other',
              const Color.fromARGB(255, 222, 217, 217),
              sacale: 4.5,
            ),
          ],
        ),
        Column(
          children: [
            _anothersFunction(
              'discount_perc',
              const Color(0xFFC5E0B5),
              sacale: 4.5,
            ),
            _anothersFunction(
              'discount',
              const Color(0xFFC5E0B5),
              sacale: 4.5,
            ),
            _anothersFunction(
              'coupon',
              const Color(0xFFC5E0B5),
              sacale: 4.5,
            ),
            _anothersFunction(
              'search',
              const Color.fromARGB(255, 222, 217, 217),
              sacale: 4.5,
            ),
          ],
        ),
      ],
    );
  }

  Widget _groupHeaderFunction() {
    return Container(
      padding: EdgeInsets.only(bottom: 0.75.h),
      width: 100.w,
      height: 60.h,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            flex: 60,
            child: _headerAndSaleList(),
          ),
          Flexible(
              flex: 30,
              child: _itemPanel(
                controller: ctrl.itemPanelScrollCtrl,
                itemPanel: ctrl.listItemPanelModel,
              )),
          Flexible(
              flex: 10,
              child: _groupPanel(
                controller: ctrl.groupPanelScrollCtrl,
                gropPanel: ctrl.listGroupPanelModel,
              )),
        ],
      ),
    );
  }

  Column _functionColumnLeft() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _anothersFunction(
          width: 16.w,
          height: 9.h,
          'payment',
          const Color(0xFF81D4FA),
        ),
        _anothersFunction(
          width: 16.w,
          height: 9.h,
          'bill_discount',
          const Color(0xFF81D4FA),
        ),
        _anothersFunction(
          width: 16.w,
          height: 9.h,
          'exit',
          const Color(0xFFFFCCBC),
        ),
        _anothersFunction(
          width: 16.w,
          height: 9.h,
          'signout',
          const Color(0xFFFFCCBC),
        ),
      ],
    );
  }

  Widget _numberPanelAndNumberFunc() {
    return Row(
      children: [
        Column(
          children: [
            _numberFunction('CLS'),
            _anothersFunction(
              'back_space',
              const Color.fromARGB(255, 222, 217, 217),
            ),
            _numberFunction('จำนวน    *  '),
            _numberFunction('.'),
          ],
        ),
        Column(
          children: [
            Row(
              children: [
                _numberFunction('7'),
                _numberFunction('8'),
                _numberFunction('9'),
              ],
            ),
            Row(
              children: [
                _numberFunction('4'),
                _numberFunction('5'),
                _numberFunction('8'),
              ],
            ),
            Row(
              children: [
                _numberFunction('1'),
                _numberFunction('2'),
                _numberFunction('3'),
              ],
            ),
            Row(
              children: [
                _numberFunction('0'),
                _anothersFunction(
                  width: 16.w,
                  height: 9.h,
                  'enter',
                  const Color(0xFF81D4FA),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _anothersFunction(
    String iconPath,
    Color color, {
    double sacale = 2,
    Function()? onTab,
    double? width,
    double? height,
  }) {
    return GestureDetector(
      onTap: onTab ?? () => print('action = $iconPath'),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 0.75),
          color: color,
          image: DecorationImage(
            scale: sacale,
            image: AssetImage('assets/icons/sale_page/$iconPath.png'),
            onError: (exception, stackTrace) => const SizedBox(),
          ),
          shape: BoxShape.rectangle,
        ),
        alignment: Alignment.center,
        width: width ?? 8.w,
        height: height ?? 9.h,
      ),
    );
  }

  Widget _numberFunction(String number, {Function()? onTab}) {
    return GestureDetector(
      onTap: onTab ?? () => print('action = $number'),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 0.75),
          color: const Color.fromARGB(255, 222, 217, 217),
          shape: BoxShape.rectangle,
        ),
        alignment: Alignment.center,
        width: 8.w,
        height: 9.h,
        child: Text(
          number,
          style: const TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
    );
  }

  Widget _itemPanel({
    required ScrollController controller,
    RxList<ItemPanelModel>? itemPanel,
  }) {
    return Scrollbar(
      controller: controller,
      thickness: 2,
      child: SingleChildScrollView(
        child: Obx(
          () => SizedBox(
            width: 100.w,
            height: 59.5.h,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
              shrinkWrap: true,
              controller: controller,
              itemCount: itemPanel!.length,
              itemBuilder: (context, i) => _itempnlButtton(
                  itemPanel[i].itemButtonLabel,
                  itemPanel[i].txtColor,
                  itemPanel[i].txtFontSize,
                  itemPanel[i].bgColor,
                  itemPanel[i].itemButtonImage),
            ),
          ),
        ),
      ),
    );
  }

  Widget _groupPanel({
    required ScrollController controller,
    RxList<GroupPanelModel>? gropPanel,
  }) {
    return Scrollbar(
      controller: controller,
      thickness: 2,
      child: SingleChildScrollView(
        child: Obx(
          () => SizedBox(
            width: 100.w,
            height: 59.5.h,
            child: ListView.builder(
              shrinkWrap: true,
              controller: controller,
              itemCount: gropPanel!.length,
              itemBuilder: (context, i) => _itempnlButtton(
                gropPanel[i].groupButtonLabel,
                gropPanel[i].txtColor,
                gropPanel[i].txtFontSize,
                gropPanel[i].bgColor,
                gropPanel[i].groupButtonImage,
              ),
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _headerAndSaleList() {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _header(),
          _saleItem(),
        ],
      ),
    );
  }

  Padding _rowSaleListAndPrice() {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'รายการสินค้า',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: 12.5,
            ),
          ),
          Text(
            'จำนวนเงิน',
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.black,
              fontSize: 12.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _saleItem() {
    return Expanded(
      child: Container(
        width: 100.w,
        // height: 45.h,
        decoration: BoxDecoration(
            border: Border.all(
          color: const Color.fromARGB(255, 237, 227, 227),
          width: 1.5,
        )),
        alignment: Alignment.topCenter,
        child: _rowSaleListAndPrice(),
      ),
    );
  }

  Widget _header() {
    return SizedBox(
      height: 10.h,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 13.w,
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text("ICON"),
              ),
              Container(
                margin: EdgeInsets.only(left: 1.w),
                width: 20.w,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "เลขที่ใบเเสร็จฯ : 101214183125",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "รวมราคาทั้งสิ้น",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Text("7,200.00",
              style: TextStyle(
                color: Colors.black,
                fontSize: 48,
                fontWeight: FontWeight.w500,
              ))
        ],
      ),
    );
  }

  Widget _itempnlButtton(String? label, String? textColor, double? txtFontSize,
      String? bgColor, String? itemButtonImage) {
    return GestureDetector(
        onTap: () {},
        child: Container(
            width: 10.w,
            height: 15.405.h,
            decoration: BoxDecoration(
                border: Border(
              left: _borderSide(4.5, Colors.white),
              top: _borderSide(1, Colors.white),
              right: _borderSide(0, Colors.white),
              bottom: _borderSide(1, Colors.white),
            )),
            child: CachedNetworkImage(
              imageUrl: Components.instance.getImgUrl(itemButtonImage ?? ''),
              fit: BoxFit.fill,
              errorWidget: (context, val, _) => Container(
                color: Color(int.parse(bgColor ?? 'ffffffff', radix: 16)),
                alignment: Alignment.center,
                child: Text(
                  textAlign: TextAlign.center,
                  label ?? '',
                  style: TextStyle(
                      fontSize: double.parse(txtFontSize.toString()),
                      color:
                          Color(int.parse(textColor ?? 'ff000000', radix: 16))),
                ),
              ),
            )
            //),
            ));
  }

  BorderSide _borderSide(double width, Color color) {
    return BorderSide(
      color: color,
      width: width,
    );
  }
}
