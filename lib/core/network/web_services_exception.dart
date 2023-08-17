enum WebServicesError {
  noData,
  networkError,
  badRequest,
  unauthorized,
  notFound,
  serverError,
  unknown,
}

class WebServicesException implements Exception {
  final WebServicesError error;
  final String message;

  WebServicesException(this.error, {this.message = ''});

  @override
  String toString() {
    return 'ApiException: $error, message: $message';
  }
}
