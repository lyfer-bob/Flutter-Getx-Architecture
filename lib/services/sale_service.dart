import 'package:mypos/packages/core_package.dart';
import 'package:mypos/utils/api_provider.dart';
import 'package:mypos/utils/api_paths.dart';

class SaleService {
  SaleService._internal();
  static SaleService instance = SaleService._internal();
  factory SaleService() => instance;

  Future<List<ItemPanelModel>> getData(String grpid) async {
    final localCache = LocalCache();
    final cache = await localCache.getLocalCache();
    var response; 
    EasyLoading.show();
    // response = await APIProvider.instance
    //     .get('${ApiPath.discount}');
    final List<dynamic> respData =
        response.statusCode == 200 ? response.data : [];
    EasyLoading.dismiss();

    List<ItemPanelModel> model = [];
    for (var element in respData) {
      model.add(ItemPanelModel.fromJson(element));
    }
    return model;
  }

  Future<List<GroupPanelModel>> getGrpData() async {
    final localCache = LocalCache();
    final cache = await localCache.getLocalCache();
    EasyLoading.show(status: 'loading...');
    var response; 
    // response = await APIProvider.instance
    //     .get('${ApiPath.discount}');
    final List<dynamic> respData =
        response.statusCode == 200 ? response.data : [];
    EasyLoading.dismiss();
    List<GroupPanelModel> data = [];
    for (var element in respData) {
      data.add(GroupPanelModel.fromJson(element));
    }
    return data;
  }

  
}
