import 'package:dio/dio.dart';
import 'package:martin_pulgar_demo/core/network/request_model.dart';
import 'package:martin_pulgar_demo/core/network/web_services_constants.dart';
import 'package:martin_pulgar_demo/core/network/web_services_exception.dart';

class WebServicesManager {
  final _dio = Dio();

  WebServicesManager() {
    configureDio();
  }

  void configureDio() {
    // Set default configs
    _dio.options.baseUrl = 'https://api.pub.dev';
    _dio.options.connectTimeout = WebServicesConstants.connectTimeout;
    _dio.options.sendTimeout = WebServicesConstants.sendTimeout;
    _dio.options.receiveTimeout = WebServicesConstants.receiveTimeout;
  }

  Future<void> request({required Request model}) async {
    final bodyData = model.isFormData ? model.getFormData() : model.data;
    try {
      final response = await _dio.request(
        model.path,
        queryParameters: model.queryParams,
        data: bodyData,
        options: Options(
          method: model.toString(),
          headers: model.header,
          responseType: model.responseType,
        ),
      );
      // Check if the response contains data
      if (response.data != null) {
        return response.data;
      } else {
        throw WebServicesException(WebServicesError.noData,
            message: 'No data found in the response.');
      }
    } on DioException catch (dioError) {
      if (dioError.type == DioExceptionType.unknown ||
          dioError.type == DioExceptionType.connectionTimeout) {
        throw WebServicesException(WebServicesError.networkError,
            message: 'Network error occurred.');
      } else if (dioError.type == DioExceptionType.badResponse) {
        String errorMessage = 'Unknown Error';
        if (dioError.response?.data != null) {
          errorMessage = dioError.response!.data.toString();
        }
        switch (dioError.response?.statusCode) {
          case 400:
            throw WebServicesException(WebServicesError.badRequest,
                message: errorMessage);
          case 401:
            throw WebServicesException(WebServicesError.unauthorized,
                message: errorMessage);
          case 404:
            throw WebServicesException(WebServicesError.notFound,
                message: errorMessage);
          case 500:
            throw WebServicesException(WebServicesError.serverError,
                message: errorMessage);
          default:
            throw WebServicesException(WebServicesError.unknown,
                message: errorMessage);
        }
      } else {
        throw WebServicesException(WebServicesError.unknown,
            message: 'Unknown error occurred.');
      }
    } catch (error) {
      throw WebServicesException(WebServicesError.unknown,
          message: 'Unknown error occurred.');
    }
  }
}
