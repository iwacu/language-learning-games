// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'aap_config/appConfig.dart';
import 'main.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  AppConfig(
      appValues: AppValues(
          appName: 'Language Learning Game',
          dbName: 'learningkorean.db',
          audioPath: "assets/audios/korean"),
      appValue: AppValue.korean);
  runApp(MyApp());
}
