import 'package:flutter/material.dart';

import 'splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "biohack",
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
