import 'package:mypos/packages/core_package.dart';
import 'package:mypos/services/sale_service.dart';

class SaleController extends GetxController {
  DateTime dateTimeNow = DateTime.now();
  Rx<String> formattedDate = ''.obs;
  RxList<GroupPanelModel> listGroupPanelModel = <GroupPanelModel>[].obs;
  RxList<ItemPanelModel> listItemPanelModel = <ItemPanelModel>[].obs;
  ScrollController itemPanelScrollCtrl = ScrollController();
  ScrollController groupPanelScrollCtrl = ScrollController();

  final saleServ = SaleService();

  void init() {
    getGrpData();
  }

  Future getGrpData() async {
    listGroupPanelModel.value = await saleServ.getGrpData();
    listGroupPanelModel.sort((a, b) => a.txtColor!.compareTo(b.txtColor!));
    getData(listGroupPanelModel[0].id.toString());
    update();
  }

  Future getData(String grpId) async {
    listItemPanelModel.value = await saleServ.getData('1');

    update();
  }
}
