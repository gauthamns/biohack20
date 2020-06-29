import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hack20/data/all_modules.dart';

class MarketMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(8.0),
        child: CarouselSlider(
          options: CarouselOptions(height: 400.0),
          items: allModules.values.toList().map((module) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Colors.amber,
                    ),
                    child: Text(
                      module.description,
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ));
  }
}
