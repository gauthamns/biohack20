//import 'package:flutter/material.dart';
//import 'dart:math' as math;
//
//import 'package:flutter_svg/svg.dart';
//class ChartmoduleWidget extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    // Figma Flutter Generator ChartmoduleWidget - COMPONENT
//    return Container(
//        width: 335,
//        height: 321,      child: Stack(
//        children: <Widget>[
//          Positioned(
//              top: 0,
//              left: 0,
//              child: Container(
//                  width: 335,
//                  height: 321,
//                  decoration: BoxDecoration(
//                    borderRadius : BorderRadius.only(
//                      topLeft: Radius.circular(12),
//                      topRight: Radius.circular(12),
//                      bottomLeft: Radius.circular(12),
//                      bottomRight: Radius.circular(12),
//                    ),
//                    boxShadow : [BoxShadow(
//                        color: Color.fromRGBO(0, 0, 0, 0.1599999964237213),
//                        offset: Offset(0,8),
//                        blurRadius: 24
//                    )],
//                    color : Color.fromRGBO(68, 68, 68, 1),
//                  )
//              )
//          ),Positioned(
//              top: 48,
//              left: 0,
//              child: Transform.rotate(
//                angle: 0.000005008956130975318 * (math.pi / 180),
//                child: Divider(
//                    color: Color.fromRGBO(79, 79, 79, 1),
//                    thickness: 1
//                )
//                ,
//              )
//          ),Positioned(
//              top: 11,
//              left: 30,
//              child: Text('D', textAlign: TextAlign.left, style: TextStyle(
//                  color: Color.fromRGBO(255, 255, 255, 1),
//                  fontFamily: 'Rajdhani',
//                  fontSize: 20,
//                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                  fontWeight: FontWeight.normal,
//                  height: 1
//              ),)
//          ),Positioned(
//              top: 11,
//              left: 115,
//              child: Text('W', textAlign: TextAlign.left, style: TextStyle(
//                  color: Color.fromRGBO(130, 130, 130, 1),
//                  fontFamily: 'Rajdhani',
//                  fontSize: 20,
//                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                  fontWeight: FontWeight.normal,
//                  height: 1
//              ),)
//          ),Positioned(
//              top: 11,
//              left: 203,
//              child: Text('M', textAlign: TextAlign.left, style: TextStyle(
//                  color: Color.fromRGBO(130, 130, 130, 1),
//                  fontFamily: 'Rajdhani',
//                  fontSize: 20,
//                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                  fontWeight: FontWeight.normal,
//                  height: 1
//              ),)
//          ),Positioned(
//              top: 11,
//              left: 293,
//              child: Text('Y', textAlign: TextAlign.left, style: TextStyle(
//                  color: Color.fromRGBO(130, 130, 130, 1),
//                  fontFamily: 'Rajdhani',
//                  fontSize: 20,
//                  letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                  fontWeight: FontWeight.normal,
//                  height: 1
//              ),)
//          ),Positioned(
//              top: 46,
//              left: 0,
//              child: Container(
//                  width: 72,
//                  height: 2,
//                  decoration: BoxDecoration(
//                    color : Color.fromRGBO(196, 196, 196, 1),
//                  )
//              )
//          ),Positioned(
//              top: 68,
//              left: 20,
//              child: Container(
//                  width: 295,
//                  height: 233,
//                  decoration: BoxDecoration(
//                    borderRadius : BorderRadius.only(
//                      topLeft: Radius.circular(8),
//                      topRight: Radius.circular(8),
//                      bottomLeft: Radius.circular(8),
//                      bottomRight: Radius.circular(8),
//                    ),
//                  )
//              )
//          ),Positioned(
//              top: 68,
//              left: 20,
//              child: Container(
//                  width: 295,
//                  height: 233,      child: Stack(
//                  children: <Widget>[
//                    Positioned(
//                        top: 0,
//                        left: 0,
//                        child: Container(
//                            width: 295,
//                            height: 233,
//                            decoration: BoxDecoration(  )
//                        )
//                    ),Positioned(
//                        top: 223,
//                        left: 27,
//                        child: Text('00:00', textAlign: TextAlign.center, style: TextStyle(
//                            color: Color.fromRGBO(163, 163, 163, 1),
//                            fontFamily: 'Roboto',
//                            fontSize: 10,
//                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                            fontWeight: FontWeight.normal,
//                            height: 1
//                        ),)
//                    ),Positioned(
//                        top: 223,
//                        left: 94,
//                        child: Text('06:00', textAlign: TextAlign.center, style: TextStyle(
//                            color: Color.fromRGBO(163, 163, 163, 1),
//                            fontFamily: 'Roboto',
//                            fontSize: 10,
//                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                            fontWeight: FontWeight.normal,
//                            height: 1
//                        ),)
//                    ),Positioned(
//                        top: 223,
//                        left: 161,
//                        child: Text('12:00', textAlign: TextAlign.center, style: TextStyle(
//                            color: Color.fromRGBO(163, 163, 163, 1),
//                            fontFamily: 'Roboto',
//                            fontSize: 10,
//                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                            fontWeight: FontWeight.normal,
//                            height: 1
//                        ),)
//                    ),Positioned(
//                        top: 223,
//                        left: 228,
//                        child: Text('18:00', textAlign: TextAlign.center, style: TextStyle(
//                            color: Color.fromRGBO(163, 163, 163, 1),
//                            fontFamily: 'Roboto',
//                            fontSize: 10,
//                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                            fontWeight: FontWeight.normal,
//                            height: 1
//                        ),)
//                    ),Positioned(
//                        top: 208,
//                        left: 0,
//                        child: Text('0', textAlign: TextAlign.right, style: TextStyle(
//                            color: Color.fromRGBO(163, 163, 163, 1),
//                            fontFamily: 'Roboto',
//                            fontSize: 10,
//                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                            fontWeight: FontWeight.normal,
//                            height: 1
//                        ),)
//                    ),Positioned(
//                        top: 138,
//                        left: 0,
//                        child: Text('50', textAlign: TextAlign.right, style: TextStyle(
//                            color: Color.fromRGBO(163, 163, 163, 1),
//                            fontFamily: 'Roboto',
//                            fontSize: 10,
//                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                            fontWeight: FontWeight.normal,
//                            height: 1
//                        ),)
//                    ),Positioned(
//                        top: 69,
//                        left: 0,
//                        child: Text('100', textAlign: TextAlign.right, style: TextStyle(
//                            color: Color.fromRGBO(163, 163, 163, 1),
//                            fontFamily: 'Roboto',
//                            fontSize: 10,
//                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                            fontWeight: FontWeight.normal,
//                            height: 1
//                        ),)
//                    ),Positioned(
//                        top: 0,
//                        left: 0,
//                        child: Text('150', textAlign: TextAlign.right, style: TextStyle(
//                            color: Color.fromRGBO(163, 163, 163, 1),
//                            fontFamily: 'Roboto',
//                            fontSize: 10,
//                            letterSpacing: 0 /*percentages not used in flutter. defaulting to zero*/,
//                            fontWeight: FontWeight.normal,
//                            height: 1
//                        ),)
//                    ),Positioned(
//                        top: 5,
//                        left: 27,
//                        child: Container(
//                            width: 268,
//                            height: 208,      child: Stack(
//                            children: <Widget>[
//                              Positioned(
//                                  top: 0,
//                                  left: 0,
//                                  child: SvgPicture.asset(
//                                      'assets/images/grid_v_1.svg',
//                                      semanticsLabel: 'grid_v_1'
//                                  );
//                              ),Positioned(
//                                  top: 0,
//                                  left: 67,
//                                  child: SvgPicture.asset(
//                                      'assets/images/grid_v_2.svg',
//                                      semanticsLabel: 'grid_v_2'
//                                  );
//                              ),Positioned(
//                                  top: 0,
//                                  left: 134,
//                                  child: SvgPicture.asset(
//                                      'assets/images/grid_v_3.svg',
//                                      semanticsLabel: 'grid_v_3'
//                                  );
//                              ),Positioned(
//                                  top: 0,
//                                  left: 201,
//                                  child: SvgPicture.asset(
//                                      'assets/images/grid_v_4.svg',
//                                      semanticsLabel: 'grid_v_4'
//                                  );
//                              ),Positioned(
//                                  top: 0,
//                                  left: 268,
//                                  child: SvgPicture.asset(
//                                      'assets/images/grid_v_5.svg',
//                                      semanticsLabel: 'grid_v_5'
//                                  );
//                              ),Positioned(
//                                  top: 208,
//                                  left: 0,
//                                  child: SvgPicture.asset(
//                                      'assets/images/grid_v_1.svg',
//                                      semanticsLabel: 'grid_v_1'
//                                  );
//                              ),Positioned(
//                                  top: 138,
//                                  left: 0,
//                                  child: SvgPicture.asset(
//                                      'assets/images/grid_v_2.svg',
//                                      semanticsLabel: 'grid_v_2'
//                                  );
//                              ),Positioned(
//                                  top: 69,
//                                  left: 0,
//                                  child: SvgPicture.asset(
//                                      'assets/images/grid_v_3.svg',
//                                      semanticsLabel: 'grid_v_3'
//                                  );
//                              ),Positioned(
//                                  top: 0,
//                                  left: 0,
//                                  child: SvgPicture.asset(
//                                      'assets/images/grid_v_4.svg',
//                                      semanticsLabel: 'grid_v_4'
//                                  );
//                              ),
//                            ]
//                        )
//                        )
//                    ),Positioned(
//                        top: 84,
//                        left: 56,
//                        child: SvgPicture.asset(
//                            'assets/images/bar_1_1.svg',
//                            semanticsLabel: 'bar_1_1'
//                        );
//                    ),Positioned(
//                        top: 107,
//                        left: 123,
//                        child: SvgPicture.asset(
//                            'assets/images/bar_1_2.svg',
//                            semanticsLabel: 'bar_1_2'
//                        );
//                    ),Positioned(
//                        top: 32,
//                        left: 190,
//                        child: SvgPicture.asset(
//                            'assets/images/bar_1_3.svg',
//                            semanticsLabel: 'bar_1_3'
//                        );
//                    ),Positioned(
//                        top: 34,
//                        left: 257,
//                        child: SvgPicture.asset(
//                            'assets/images/bar_1_4.svg',
//                            semanticsLabel: 'bar_1_4'
//                        );
//                    ),
//                  ]
//              )
//              )
//          ),
//        ]
//    )
//    );
//  }
//}
