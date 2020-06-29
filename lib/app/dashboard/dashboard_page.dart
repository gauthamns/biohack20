import 'package:flutter/material.dart';
import 'package:hack20/app/modules/add_module_button.dart';
import 'package:hack20/app/modules/small_heartrate_widget.dart';
import 'package:hack20/config/prefs.dart';
import 'package:hack20/data/all_modules.dart';
import 'package:hack20/data/module.dart';

class DashboardPage extends StatelessWidget {
  final Function setCurrentIndex;

  DashboardPage(this.setCurrentIndex);

  @override
  Widget build(BuildContext context) {
    // Get all the modules user has subscribed to.
    List<Module> subscribedModules = getSubscribedModules();

    List<Widget> gridWidgets = List();
    if (subscribedModules != null) {
      subscribedModules.forEach((Module module) {
        gridWidgets.add(widgetForModule(module));
        // Add to the list.
//        gridWidgets.add(SmallModuleWidget(module));
      });
    }

    gridWidgets.add(AddModuleButton(setCurrentIndex));

    return Container(
      padding: EdgeInsets.all(12.0),
      child: GridView.count(
        crossAxisCount: 2,
        children: gridWidgets,
        crossAxisSpacing: 4.0,
      ),
    );
  }

  Widget widgetForModule(Module module) {
    if (module.id == heartModule.id) {
      return SmallHeartRateWidget(module);
    }

    // Let's return for now, heart rate widget again
    return SmallHeartRateWidget(module);
  }

  List<Module> getSubscribedModules() {
    List<Module> modules = List();
    List<String> subscribedModuleIDs = Prefs.instance.getSubscribedModules();
    if (subscribedModuleIDs != null) {
      subscribedModuleIDs.forEach((moduleID) {
        modules.add(allModules[moduleID]);
      });
    } else {
      // For now, let's just add heart rate module.
      modules.add(heartModule);
    }

    return modules;
  }
}
