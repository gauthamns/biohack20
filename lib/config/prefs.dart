import 'package:hack20/data/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static final Prefs instance = Prefs._internal();

  static const String KEY_USER_NAME = 'userName';
  static const String KEY_USER_AGE = 'userAge';
  static const String KEY_USER_GENDER = 'userGender';

  SharedPreferences sharedPrefs;

  User loggedUser;

  Prefs._internal();

  // Load the preferences in the background using async
  // True if you loading happened. Else false if already loaded.
  Future<bool> load() async {
    if (!isSharedPrefsAvailable()) {
      sharedPrefs = await SharedPreferences.getInstance();
      loggedUser = loadUserDetails();
    }
  }

  loadUserDetails() {
    loggedUser = User();
    if (isUserSignedIn()) {
      loggedUser.name = getUserName();
      loggedUser.age = sharedPrefs.getInt(KEY_USER_AGE);
      loggedUser.gender = sharedPrefs.getString(KEY_USER_GENDER);
    }
  }

  // If we have user name, then user is signed in.
  bool isUserSignedIn() {
    String name = getUserName();
    return name != null && name != "";
  }

  bool isSharedPrefsAvailable() {
    return sharedPrefs != null;
  }

  // UserID.
  String getUserName() {
    if (isSharedPrefsAvailable()) {
      return sharedPrefs.getString(KEY_USER_NAME);
    }

    return null;
  }

  setUserDetails(User userDetails) async {
    // If sharedPrefs not available, load them first.
    if (!isSharedPrefsAvailable()) {
      await load();
    }

    await sharedPrefs.setString(KEY_USER_NAME, userDetails.name);
    await sharedPrefs.setInt(KEY_USER_AGE, userDetails.age);
    await sharedPrefs.setString(KEY_USER_GENDER, userDetails.gender);

    loggedUser = userDetails;
  }
}
