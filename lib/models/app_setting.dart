import 'package:hiepnx_timer/utils/configs.dart';

final String tableAlarm = "AppSetting";
final String _idColumn = "id";
final String _typeThemeMode = "themeMode";
final String createAppSettingTable = '''
  create table IF NOT EXISTS $tableAlarm (
    $_idColumn integer primary key,
    $_typeThemeMode integer)
  ''';

class Alarm {
  int id = Config.INT_DEFAULT;
  int themeMode = Config.INT_DEFAULT;

  Alarm();

  Alarm.fromJson(Map<String, dynamic> json) {
    id = json[_idColumn];
    themeMode = json[_typeThemeMode] ?? Config.INT_DEFAULT;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      _typeThemeMode: themeMode ?? Config.INT_DEFAULT,
    };
    if (id != null) {
      map[_idColumn] = id;
    }
    return map;
  }
}