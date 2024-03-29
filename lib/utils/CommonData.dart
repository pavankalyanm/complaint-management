import 'package:shared_preferences/shared_preferences.dart';
import 'package:complaint_manager/utils/Constants.dart';

class CommonData {
//  static saveLoginData(Map user) async {
//    SharedPreferences Loginprefs = await SharedPreferences.getInstance();
//    Loginprefs.setBool(Constants.isLoggedIn, true);
//    Loginprefs.setString(Constants.loggedInUserId, user['id']);
//
//    Loginprefs.setString(Constants.loggedInUserName, user['name']);
//
//    Loginprefs.setInt(Constants.loggedInUserRole, user['userRole']);
//
//    Loginprefs.setString(Constants.loggedInUserMobile, user['userMobile']);
//
//    Loginprefs.setString(Constants.loggedInUserBlock, user['userBlock']);
//
//    Loginprefs.setString(Constants.loggedInUserRoom, user['userRoom']);
//  }

  static void clearLoggedInUserData() async {
    SharedPreferences removePrefs = await SharedPreferences.getInstance();

    removePrefs.setBool(Constants.isLoggedIn, false);
    removePrefs.setBool(Constants.isLoggedOut, true);

    removePrefs.remove(Constants.loggedInUserMobile);
    removePrefs.remove(Constants.loggedInUserName);
    removePrefs.remove(Constants.loggedInUserBlock);
    removePrefs.remove(Constants.loggedInUserRoom);
    removePrefs.remove(Constants.loggedInUserRole);
  }
}
