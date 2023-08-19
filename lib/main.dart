import 'package:martin_pulgar_demo/app.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:martin_pulgar_demo/core/network/web_services_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance.registerSingleton<WebServicesManager>(WebServicesManager(),
      signalsReady: true);
  runApp(const MyApp());
}
