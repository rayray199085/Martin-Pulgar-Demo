import 'package:dio/dio.dart';
import 'package:martin_pulgar_demo/core/network/request_model.dart';
import 'package:martin_pulgar_demo/feature/models/new_diary_response.dart';

import '../network/request_method.dart';
import '../network/web_services_manager.dart';
import 'package:get_it/get_it.dart';

const String _createNewDiary = 'api/new-diary';

class NewDiaryRepository {
  NewDiaryRepository({WebServicesManager? webServicesManager})
      : _webServicesManager =
            webServicesManager ?? GetIt.instance<WebServicesManager>();

  final WebServicesManager _webServicesManager;

  Future<NewDiaryResponse> createNewDiary(
      {required Map<String, dynamic> data}) async {
    try {
      final res = await _webServicesManager.request(
          model: Request(
              path: _createNewDiary,
              method: RequestMethod.post,
              data: FormData.fromMap(data),
              header: const {'Content-Type': 'multipart/form-data'}));
      return NewDiaryResponse.fromJson(res);
    } on Exception {
      rethrow;
    } on Error {
      rethrow;
    }
  }
}
