import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack20/config/device_type.dart';

// Get the corresponding appbar for ios and android.
// Due to single trailing widget, only single action is supported for now.
PreferredSizeWidget appBar(
    {Key key,
    Widget leading,
    Widget title,
    Widget action,
    Color backgroundColor}) {
  if (DeviceType.isIOS) {
    return new CupertinoNavigationBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: true,
        key: key,
        leading: leading,
        middle: title,
        trailing: action);
  }
  if (action != null) {
    return AppBar(
      key: key,
      automaticallyImplyLeading: true,
      title: title,
      backgroundColor: backgroundColor,
      actions: <Widget>[action],
    );
  }

//  return AppBar(
//    key: key,
//    title: title,
//    automaticallyImplyLeading: true,
//    backgroundColor: backgroundColor,
//  );
}
