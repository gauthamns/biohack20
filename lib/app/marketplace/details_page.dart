import 'package:flutter/material.dart';
import 'package:hack20/app/dashboard/main_page.dart';
import 'package:hack20/app/modules/add_module_button.dart';
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
          //  AddModuleButton(MainPage.pageDashboard);
        ],
      ),
    );
  }
}
