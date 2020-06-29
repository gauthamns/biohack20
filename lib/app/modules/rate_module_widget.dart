import 'package:flutter/material.dart';

class RatemoduleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 335,
        height: 162,
        child: Stack(children: <Widget>[
//          Positioned(top: 0, left: 0, child: null),
          Positioned(
              top: 20,
              left: 176,
              child: Text(
                'Max today',
                textAlign: TextAlign.left,
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
              top: 42,
              left: 176,
              child: Text(
                '104 bps/m',
                textAlign: TextAlign.left,
                style: TextStyle(
//                color: undefined,
                    fontFamily: 'Rajdhani',
                    fontSize: 17,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 120,
              left: 176,
              child: Text(
                '56 bps/m',
                textAlign: TextAlign.left,
                style: TextStyle(
//                color: undefined,
                    fontFamily: 'Rajdhani',
                    fontSize: 17,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 20,
              left: 20,
              child: Container(
                  width: 122,
                  height: 122,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment(6.123234262925839e-17, 1),
                        end: Alignment(-1, 6.123234262925839e-17),
                        colors: [
                          Color.fromRGBO(255, 215, 112, 1),
                          Color.fromRGBO(211, 255, 89, 1)
                        ]),
                  ))),
          Positioned(
              top: 98,
              left: 176,
              child: Text(
                'Min today',
                textAlign: TextAlign.left,
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
              top: 50,
              left: 56,
              child: Text(
                '77',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'Rajdhani',
                    fontSize: 48,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 94,
              left: 57,
              child: Text(
                'bps/m',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromRGBO(79, 79, 79, 1),
                    fontFamily: 'Rajdhani',
                    fontSize: 14,
                    letterSpacing:
                        0 /*percentages not used in flutter. defaulting to zero*/,
                    fontWeight: FontWeight.normal,
                    height: 1),
              )),
          Positioned(
              top: 81,
              left: 176,
              child:
                  Divider(color: Color.fromRGBO(79, 79, 79, 1), thickness: 1)),
          Positioned(
              top: 47,
              left: 263,
              child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(242, 153, 74, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                  ))),
          Positioned(
              top: 125,
              left: 263,
              child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(111, 207, 151, 1),
                    borderRadius: BorderRadius.all(Radius.elliptical(12, 12)),
                  ))),
        ]));
  }
}
