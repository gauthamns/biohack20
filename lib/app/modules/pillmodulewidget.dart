import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'package:hack20/data/module.dart';

class PillModuleWidget extends StatelessWidget {
  final Module module;

  PillModuleWidget(this.module);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 160,
        height: 160,
        child: Stack(children: <Widget>[
          Positioned(
              top: 0,
              left: 0,
              child: Container(
                  width: 160,
                  height: 160,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1599999964237213),
                          offset: Offset(0, 8),
                          blurRadius: 24)
                    ],
                    color: Color.fromRGBO(68, 68, 68, 1),
                  ))),
          Positioned(
              top: 59,
              left: 59,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10)),
                width: 40,
                height: 40,
              )),
          Positioned(
              top: 104,
              left: 58,
              child: Text(
                '28 June',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(130, 130, 130, 1),
                    fontFamily: 'Rajdhani',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 13,
              left: 42,
              child: Text(
                'Pills',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontFamily: 'Rajdhani',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 132,
              left: 46,
              child: Text(
                'use Blue container',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(30, 234, 234, 1),
                    fontFamily: 'Rajdhani',
                    fontSize: 12,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 44,
              left: 10,
              child: Transform.rotate(
                angle: -0.000005008956130975318 * (math.pi / 180),
                child:
                    Divider(color: Color.fromRGBO(79, 79, 79, 1), thickness: 1),
              )),
        ]));
  }
}
