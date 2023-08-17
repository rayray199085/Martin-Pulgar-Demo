import 'package:martin_pulgar_demo/app.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:martin_pulgar_demo/core/network/web_services_manager.dart';

final getIt = GetIt.instance;

Future<void> main() async {
  _setup();
  runApp(const MyApp());
}

void _setup() {
  WidgetsFlutterBinding.ensureInitialized();
  getIt.registerSingleton<WebServicesManager>(WebServicesManager(),
      signalsReady: true);
}
