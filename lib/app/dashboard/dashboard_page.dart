import 'package:flutter/material.dart';
import 'package:hack20/app/modules/add_module_button.dart';
import 'package:hack20/app/modules/pill_%20module_widget.dart';
import 'package:hack20/app/modules/small_heartrate_widget.dart';
import 'package:hack20/config/prefs.dart';
import 'package:hack20/data/all_modules.dart';
import 'package:hack20/data/module.dart';
import 'package:hack20/main.dart';

import 'main_page.dart';

class DashboardPage extends StatelessWidget {
  final Function setCurrentIndex;

  DashboardPage(this.setCurrentIndex);

  @override
  Widget build(BuildContext context) {
    // Get all the modules user has subscribed to.
    List<Module> subscribedModules = getSubscribedModules();

    if (subscribedModules == null || subscribedModules.length == 0) {
      return AddFirstModuleWidget(setCurrentIndex);
    }

    List<Widget> gridWidgets = List();
    if (subscribedModules != null) {
      subscribedModules.forEach((Module module) {
        gridWidgets.add(widgetForModule(module, context));
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

  Widget widgetForModule(Module module, BuildContext context) {
    if (module.id == heartModule.id) {
      return SmallHeartRateWidget(module);
    }

    if (module.id == pillsModule.id) {
      return InkWell(
        child: PillModuleWidget(module),
        onTap: () {
          Navigator.pushNamed(context, MyApp.routePillsDetailed);
        },
      );
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
    }

    return modules;
  }
}

class AddFirstModuleWidget extends StatelessWidget {
  final Function setCurrentIndex;

  AddFirstModuleWidget(this.setCurrentIndex);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.favorite,
                color: Colors.pink,
                size: 97.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Welcome to Biohack!',
                style: TextStyle(
                  fontSize: 32.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Biohack will help you control the biological processes and work of your body. Add the necessary modules to achieve the desired goal.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                child: ButtonWidget(),
                onTap: () {
                  setCurrentIndex(MainPage.pageMarketplace);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ButtonWidget - GROUP
    return Container(
        width: 190,
        height: 56,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 191,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Color.fromRGBO(112, 99, 255, 1),
                  ))),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Add first module',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Rajdhani',
                    fontSize: 17,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              ),
            ),
          ),
        ]));
  }
}
