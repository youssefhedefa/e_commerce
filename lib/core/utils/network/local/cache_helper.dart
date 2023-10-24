import 'package:e_commerce/core/utils/my_routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static SharedPreferences? sharedPreferences;
  static String startScreenKey = 'homeView';

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> setStartingScreen({
    required bool value,
  }) async {
    return sharedPreferences!.setBool(startScreenKey, value);
  }

  static String? getStartingScreen() {

    bool? homeActive = sharedPreferences!.getBool(startScreenKey);
    //print(sharedPreferences!.getBool(startScreenKey).toString());
    if(homeActive == true){
      return MyRoutes.homeView;
    }
    else{
      return '/';
    }
  }


}
