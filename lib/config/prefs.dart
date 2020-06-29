import 'package:hack20/data/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Prefs {
  static final Prefs _instance = Prefs._internal();

  static const String KEY_USER_NAME = 'userName';
  static const String KEY_USER_AGE = 'userAge';
  static const String KEY_USER_GENDER = 'userGender';
  static const String KEY_SUBSCRIBED_MODULES = "subscribedModules";

  SharedPreferences sharedPrefs;

  User loggedUser;

  Prefs._internal();

  static Prefs get instance {
    return _instance;
  }

  // Load the preferences in the background using async
  // True if you loading happened. Else false if already loaded.
  Future<bool> load() async {
    if (!isSharedPrefsAvailable()) {
//      SharedPreferences.setMockInitialValues({});
      sharedPrefs = await SharedPreferences.getInstance();
      loggedUser = loadUserDetails();
      return true;
    }

    return false;
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

  subscribeToModule(String moduleID) async {
    List<String> subscribedList =
        sharedPrefs.getStringList(KEY_SUBSCRIBED_MODULES);
    if (subscribedList == null) {
      subscribedList = List();
    }

    // If available already, nothing to do.
    if (!subscribedList.contains(moduleID)) {
      subscribedList.add(moduleID);
    }
    await sharedPrefs.setStringList(KEY_SUBSCRIBED_MODULES, subscribedList);
  }

  unsubscribeToModule(String moduleID) async {
    List<String> subscribedList =
        sharedPrefs.getStringList(KEY_SUBSCRIBED_MODULES);
    subscribedList.removeWhere((y) => y == moduleID);
    await sharedPrefs.setStringList(KEY_SUBSCRIBED_MODULES, subscribedList);
  }

  List<String> getSubscribedModules() {
    List<String> subscribedList =
        sharedPrefs.getStringList(KEY_SUBSCRIBED_MODULES);

    if (subscribedList == null) {
      subscribedList = List();
    }

    return subscribedList;
  }

  bool isSubscribed(moduleID) {
    List<String> subscribedList = getSubscribedModules();
    return subscribedList.contains(moduleID);
  }
}
