import 'package:mypos/utils/api_provider.dart';
import 'package:mypos/utils/api_paths.dart';
import 'package:mypos/packages/core_package.dart';

class MainService {
  MainService._internal();
  static MainService instance = MainService._internal();
  factory MainService() => instance;

  Future<List<GetParamModel>> getParam(String posId) async {
    
    final localCache = LocalCache();
    var response; 

    // response =
    //     await APIProvider.instance.get('${ApiPath.main}');

    final List<dynamic> respData =
        response.statusCode == 200 ? response.data : [];
    if (respData.isEmpty) return [];
    List<GetParamModel> model = [];
    for (var element in respData) {
      model.add(GetParamModel.fromJson(element));
    }
    final value = model.first;

    Future.wait([
      localCache.setLastReceiptRunno(stringVal(value.lastReceiptRunNo)),
      localCache.setLastReceiptRunno(stringVal(value.lastReceiptRunNo)),
  
    ]);

    return model;
  }

  String stringVal(var data) => (data ?? '').toString();

  Future<List<PosFuncLvModel>> getPosFunc() async {
        var response; 
    // response = await APIProvider.instance.get(ApiPath.main);
    final List<dynamic> respData =
        response.statusCode == 200 ? response.data : [];
    List<PosFuncLvModel> model = [];
    for (var element in respData) {
      model.add(PosFuncLvModel.fromJson(element));
    }
    final localCache = LocalCache();

    final funcConfigShop = valueFuncLv('CF02', model);
    final funcSalePageSearch = valueFuncLv('SP01', model);


    Future.wait([
      localCache.setFuncConfigShop(funcConfigShop),
      localCache.setfuncSalePageSearch(funcSalePageSearch),
    ]);

    return model;
  }

  String valueFuncLv(String value, List<PosFuncLvModel> list) =>
      (list.firstWhere((element) => element.funcId == value).funLevel ?? 0)
          .toString();

  String valueFuncSts(String value, List<PosFuncLvModel> list) =>
      (list.firstWhere((element) => element.funcId == value).funcUsage ?? 0)
          .toString();

  Future<List<PosStationModel>> getPosS() async {
    var response; 
    //  response = await APIProvider.instance.get(ApiPath.main);

    final List<dynamic> respData =
        response.statusCode == 200 ? response.data : [];
    List<PosStationModel> model = [];
    for (var element in respData) {
      model.add(PosStationModel.fromJson(element));
    }
    return model;
  }

}
