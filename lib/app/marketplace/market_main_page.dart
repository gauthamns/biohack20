import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MarketMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: CarouselSlider(
              options: CarouselOptions(
                enableInfiniteScroll: false,
                reverse: false,
                height: 400.0,
                aspectRatio: 16 / 9,
              ),
              items: [
                {
                  'name': 'Heart',
                  'image': 'assets/heart.jpg',
                  'content':
                      'Control the work of your heart.Track parameters every day and get important recommendations.',
                },
                {
                  'name': 'food',
                  'image': 'assets/food.jpg',
                  'content':
                      'Control the work of your heart.Track parameters every day and get important recommendations.',
                },
                {
                  'name': 'water',
                  'image': 'assets/water.jpg',
                  'content':
                      'Control the work of your heart.Track parameters every day and get important recommendations.',
                },
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('${i["image"]}'),
                                fit: BoxFit.cover),
                            color: Colors.amber,
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
                                      '${i["name"]}',
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.white),
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
                                      '${i["content"]}',
                                      style: TextStyle(
                                          fontSize: 16.0, color: Colors.white),
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
          )),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Must have',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  'Show All',
                  style: TextStyle(fontSize: 16, color: Color(0xff1EEBEB)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              enableInfiniteScroll: false,
              reverse: false,
            ),
            items: [1, 2, 3, 4, 5].map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, top: 10.0),
                                child: Text(
                                  'Heart',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 10.0, bottom: 10.0),
                                child: Text(
                                  '$i',
                                  style: TextStyle(
                                      fontSize: 16.0, color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ));
                },
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
