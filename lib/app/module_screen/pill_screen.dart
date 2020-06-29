import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hack20/data/all_modules.dart';

class PillScrn extends StatefulWidget {
  @override
  _PillScrnState createState() => _PillScrnState();
}

class _PillScrnState extends State<PillScrn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.graphic_eq), onPressed: null)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Pills',
                      style: TextStyle(
                        fontSize: 40,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Mark all containers by this colors and sort each container by Pils',
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            colorTablet(Colors.blueAccent),
                            colorTablet(Colors.yellowAccent),
                            colorTablet(Colors.greenAccent),
                            colorTablet(Colors.pinkAccent),
                            colorTablet(Colors.redAccent),
                            colorTablet(Colors.amberAccent),
                            colorTablet(Colors.white),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            ' Today',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey[800],
                      borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10))),
                        width: double.infinity,
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text("Blue Container")),
                        ),
                      ),
                      contentTablet('Iron', '30 days'),
                      contentTablet('Zink', '20 days'),
                      contentTablet('Spiruling', '45 days'),
                      contentTablet('Calcium', '45 days'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            // Image.asset(module.image),
                            Text(
                              'Recommended modules',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'Show All',
                        style: TextStyle(fontSize: 16, color: Colors.cyan[200]),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CarouselSlider(
                  options: CarouselOptions(
                      enableInfiniteScroll: false,
                      reverse: false,
                      aspectRatio: 16 / 9,
                      height: 200),
                  items: allModules.values.toList().map((module) {
                    return Builder(
                      builder: (BuildContext context) {
                        return InkWell(
                          // onTap: () => ,
                          child: Container(
                              //width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(module.marketPlaceImg),
                                    fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30.0, top: 30.0),
                                        child: Text(
                                          module.name,
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomLeft,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 30.0, bottom: 30.0),
                                        child: Text(
                                          module.description,
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Padding contentTablet(String name, String days) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Icon(Icons.toll),
                SizedBox(
                  width: 10,
                ),
                Text(name,
                    style: TextStyle(
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          Row(
            children: [
              Text(days),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.arrow_forward_ios)
            ],
          ),
        ],
      ),
    );
  }

  Container colorTablet(Color color) {
    return Container(
      decoration:
          BoxDecoration(color: color, borderRadius: BorderRadius.circular(10)),
      width: 40,
      height: 40,
    );
  }
}
