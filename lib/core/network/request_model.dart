import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:martin_pulgar_demo/core/network/request_method.dart';

class Request extends Equatable {
  const Request({
    this.header,
    this.queryParams,
    this.data,
    this.method = RequestMethod.get,
    required this.path,
    this.cancelToken,
    this.isFormData = false,
    this.responseType = ResponseType.json,
  });

  final Map<String, dynamic>? header;
  final Map<String, dynamic>? queryParams;
  final Map<String, dynamic>? data;
  final RequestMethod method;
  final String path;
  final CancelToken? cancelToken;
  final bool isFormData;
  final ResponseType responseType;

  /// final formData = FormData.fromMap({
  ///   'name': 'dio',
  ///   'date': DateTime.now().toIso8601String(),
  ///   'file': await MultipartFile.fromFile('./text.txt', filename: 'upload.txt'),
  ///   'files': [
  ///     await MultipartFile.fromFile('./text1.txt', filename: 'text1.txt'),
  ///     await MultipartFile.fromFile('./text2.txt', filename: 'text2.txt'),
  ///   ]
  /// });
  FormData getFormData() {
    return FormData.fromMap(data ?? {});
  }

  @override
  List<Object?> get props => [
        header,
        queryParams,
        data,
        method,
        path,
        cancelToken,
        isFormData,
      ];
}
