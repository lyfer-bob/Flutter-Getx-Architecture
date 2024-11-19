import 'dart:io';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import '../packages/core_package.dart' hide Response;

class APIProvider extends InterceptorsWrapper {
  final _dio = Dio();

  APIProvider() {
    _dio.options.connectTimeout = const Duration(seconds: 20);
    _dio.options.headers = {
      "Content-Type": "application/json; charset=UTF-8",
      "Accept": "*/*",
    };

    _dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        // Don't trust any certificate just because their root cert is trusted.
        final HttpClient client =
            HttpClient(context: SecurityContext(withTrustedRoots: true));
        // You can test the intermediate / root cert here. We just ignore it.
        client.badCertificateCallback = (cert, host, port) => true;
        // client.autoUncompress = false;

        return client;
      },
    );
  }
  static final _singleton = APIProvider();
  static APIProvider get instance => _singleton;

  var logger = Logger();

  Future<Response> get(String url) async {
    try {
      final response = await _dio.request(
        url,
        options: Options(method: 'GET'),
      );
      return response;
    } on DioException catch (e) {
      print('e mes = ${e.message}');
      return await _onDioException(e);
    }
  }

  Future<Response> post(String url, {final dynamic body = '{}'}) async {
    try {
      final response = await _dio.request(
        url,
        data: body,
        options: Options(method: 'POST'),
      );
      return response;
    } on DioException catch (e) {
      return await _onDioException(e);
    }
  }

  Future<Response> put(String url, {final dynamic body = '{}'}) async {
    try {
      final response = await _dio.request(
        url,
        options: Options(method: 'PUT'),
      );
      return response;
    } on DioException catch (e) {
      return await _onDioException(e);
    }
  }

  Future<Response> delete(String url, {final dynamic body = '{}'}) async {
    try {
      final response = await _dio.request(
        url,
        options: Options(method: 'DELETE'),
      );
      return response;
    } on DioException catch (e) {
      return await _onDioException(e);
    }
  }

  Future<Response> _onDioException(DioException err) async {
    return err.response ??
        Response<dynamic>(
            statusCode: err.response?.statusCode ?? 400,
            requestOptions: err.requestOptions);
  }
}
