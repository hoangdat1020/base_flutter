import 'package:flutter/material.dart';
import 'package:flutter_application_flavor/app/app.dart';
import 'package:flutter_application_flavor/feature/resources/language_manager.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:easy_localization/easy_localization.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await FlutterConfig.loadEnvVariables();
  runApp(EasyLocalization(
    supportedLocales: const [ENGLISH_LOCAL, JAPAN_LOCAL],
    path: ASSETS_PATH_LOCALIZATIONS,
    fallbackLocale: JAPAN_LOCAL,
    saveLocale: true,
    child: MyApp(),
  ));
}
