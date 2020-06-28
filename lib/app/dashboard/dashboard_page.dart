import 'package:flutter/material.dart';
import 'package:hack20/app/modules/add_module_button.dart';
import 'package:hack20/app/modules/small_module_widget.dart';
import 'package:hack20/config/prefs.dart';
import 'package:hack20/data/all_modules.dart';
import 'package:hack20/data/module.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get all the modules user has subscribed to.
    List<Module> subscribedModules = getSubscribedModules();

    List<Widget> gridWidgets = List();
    if (subscribedModules != null) {
      subscribedModules.forEach((Module module) {
        // Add to the list.
        gridWidgets.add(SmallModuleWidget(module));
      });
    }

    gridWidgets.add(AddModuleButton());

    return Container(
      padding: EdgeInsets.all(16.0),
      child: GridView.count(crossAxisCount: 2, children: gridWidgets),
    );
  }

  List<Module> getSubscribedModules() {
    List<Module> modules = List();
    List<String> subscribedModuleIDs = Prefs.instance.getSubscribedModules();
    if (subscribedModuleIDs != null) {
      subscribedModuleIDs.forEach((moduleID) {
        modules.add(allModules[moduleID]);
      });
    }

    return modules;
  }
}
