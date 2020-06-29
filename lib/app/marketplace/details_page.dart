import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack20/config/prefs.dart';
import 'package:hack20/data/module.dart';

class DetailsPage extends StatelessWidget {
  Module module;
  DetailsPage(this.module);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage('${module.marketPlaceImg}'),
                      fit: BoxFit.fill)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      // Image.asset(module.image),
                      Text(
                        '${module.name}',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  'FREE',
                  style: TextStyle(fontSize: 16, color: Colors.green[200]),
                ),
              ),
            ],
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 30.0),
                child: Text(
                  module.description,
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ),
            ),
          ),
          CupertinoButton(
            child: Text(actionText(),
                style: TextStyle(
                  color: Color.fromRGBO(30, 234, 234, 1),
                )),
            onPressed: getOnPressed(context),
          ),
          //  AddModuleButton(MainPage.pageDashboard);
        ],
      ),
    );
  }

  getOnPressed(BuildContext context) {
    if (module.isComingSoon) {
      return null;
    }

    return () {
      if (Prefs.instance.isSubscribed(module.id)) {
        Prefs.instance.unsubscribeToModule(module.id);
      } else {
        Prefs.instance.subscribeToModule(module.id);
      }
      Navigator.of(context).pop();
    };
  }

  String actionText() {
    if (Prefs.instance.isSubscribed(module.id)) {
      return "Remove module";
    }

    if (!module.isComingSoon) {
      return "Add module";
    }

    return "Coming Soon";
  }
}
