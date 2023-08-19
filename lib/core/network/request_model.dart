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
    this.responseType = ResponseType.json,
  });

  final Map<String, dynamic>? header;
  final Map<String, dynamic>? queryParams;
  final Object? data;
  final RequestMethod method;
  final String path;
  final CancelToken? cancelToken;
  final ResponseType responseType;

  @override
  List<Object?> get props => [
        header,
        queryParams,
        data,
        method,
        path,
        cancelToken,
      ];
}
