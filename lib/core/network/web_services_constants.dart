class WebServicesConstants {
  static Duration connectTimeout = const Duration(seconds: 5);
  static Duration receiveTimeout = const Duration(seconds: 3);
  static Duration sendTimeout = const Duration(seconds: 5);
  static String baseURL = 'https://reqres.in/';
  static String noDataFoundErrorMessage = 'No data found in the response.';
  static String networkErrorMessage = 'Network error occurred.';
  static String unknownErrorMessage = 'Unknown error occurred.';
}
