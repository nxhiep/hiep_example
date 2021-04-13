
import 'package:shared_preferences/shared_preferences.dart';

class DataManager {

  static DataManager _instance;
  static DataManager getIntance() {
    if(_instance == null){
      _instance = DataManager();
    }
    return _instance;
  }

  SharedPreferences _pref;

  Future<SharedPreferences> getPref() async {
    if(_pref == null){
      _pref = await SharedPreferences.getInstance();
    }
    return _pref;
  }
}