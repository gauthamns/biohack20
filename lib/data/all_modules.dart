// All the modules that are currently available in the app.

import 'module.dart';

Map<String, Module> allModules = {
  heartModule.id: heartModule,
  pillsModule.id: pillsModule,
  yogaModule.id: yogaModule,
};

Module heartModule = Module(
    id: "1",
    name: "Heart",
    description: "Module to keep the heart healthy",
    image: "assets/images/heartmodule.svg",
    marketPlaceImg: "assets/images/heartratemp.png",
    isComingSoon: false);

Module pillsModule = Module(
    id: "2",
    name: "Pills",
    description: "Take your pills, on time.",
    image: "assets/images/heartmodule.svg",
    marketPlaceImg: "assets/images/pills.jpeg",
    isComingSoon: false);

Module yogaModule = Module(
    id: "3",
    name: "Yoga",
    description: "Yoga for Body, Mind & Soul.",
    image: "assets/images/heartmodule.svg",
    marketPlaceImg: "assets/images/heartratemp.png",
    isComingSoon: true);
