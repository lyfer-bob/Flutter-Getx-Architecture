import 'package:mypos/packages/local_cache.dart';

class ReceiptsService {
  ReceiptsService._internal();
  static ReceiptsService instance = ReceiptsService._internal();
  factory ReceiptsService() => instance;

  final localCache = LocalCache();

}
