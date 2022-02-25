enum AppValue { korean, spanish }

class AppValues {
  final String appName;
  final String dbName;
  final String audioPath;

  AppValues(
      {required this.appName, required this.dbName, required this.audioPath});
}

class AppConfig {
  AppValue? appValue;
  AppValues? appValues;

  static AppConfig? _instance;

  factory AppConfig({AppValue? appValue, AppValues? appValues}) {
    _instance ??= AppConfig._initialize(appValue, appValues);
    return _instance!;
  }
  AppConfig._initialize(this.appValue, this.appValues);
  static AppConfig get instance => _instance!;
}
