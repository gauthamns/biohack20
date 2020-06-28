// All the modules that are currently available in the app.

import 'module.dart';

Map<String, Module> allModules = {
  heartModule.id: heartModule,
  waterModule.id: waterModule,
};

Module heartModule = Module(
    "1", "Heart", "Module to keep the heart healthy", "graphics/heartimg.png");

Module waterModule = Module(
    "2", "Water", "Drink water. For water is life", "graphics/water.png");
