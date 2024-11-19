import 'package:mypos/utils/api_provider.dart';
import 'package:mypos/utils/api_paths.dart';
import 'package:mypos/packages/core_package.dart';

class DiscountService {
  DiscountService._internal();
  static DiscountService instance = DiscountService._internal();
  factory DiscountService() => instance;

  Future<List<PosStationModel>> getPosS() async {
     var response
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
