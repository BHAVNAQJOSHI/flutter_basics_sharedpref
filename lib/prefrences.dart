import 'package:shared_preferences/shared_preferences.dart';

void changeStatus (bool isLogged) async {
  final SharedPreferences sharedPrefrences = await SharedPreferences.getInstance();
  sharedPrefrences.setBool('isLogged', isLogged);
}
Future<bool> getStatus () async {
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getBool('isLogged')?? false;

}
//  bool? getBool(String key) => _preferenceCache[key] as bool?;
// bool? getBool(String key)  { return
//
// }