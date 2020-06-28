import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';

class DeviceType {
  // If you want to show iOS.
  // we can shift to show ios in android for testing too.
  static bool isIOS = isDeviceIOS();
  static bool isWeb = kIsWeb;
  static bool isAndroid = isAndroidOS();
}

bool isDeviceIOS() {
  if (kIsWeb == true) {
    return false;
  }
  if (Platform.operatingSystem == null || Platform.operatingSystem == "") {
    return false;
  }

  return Platform.isIOS;
}

bool isAndroidOS() {
  if (kIsWeb == true) {
    return false;
  }
  if (Platform.operatingSystem == null || Platform.operatingSystem == "") {
    return false;
  }

  return Platform.isAndroid;
}
