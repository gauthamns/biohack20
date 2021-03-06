import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hack20/app/dashboard/main_page.dart';

class AddModuleButton extends StatelessWidget {
  final Function setCurrentIndex;
  AddModuleButton(this.setCurrentIndex);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
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
                      border: Border.all(
                        color: Color.fromRGBO(93, 93, 93, 1),
                        width: 1,
                      ),
                    ))),
            Positioned(
                top: 56,
                left: 68,
                child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
//                    color: Color.fromRGBO(255, 255, 255, 1),
                      color: Colors.transparent,
                    ),
                    child: Stack(children: <Widget>[
                      Positioned(
                        top: 2,
                        left: 2,
                        child: SvgPicture.asset("assets/images/addmodule.svg",
                            semanticsLabel: 'vector'),
                      ),
                    ]))),
            Positioned(
                top: 83,
                left: 41,
                child: Text(
                  'Add module',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromRGBO(130, 130, 130, 1),
                      fontFamily: 'Rajdhani',
                      fontSize: 16,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 1),
                )),
          ])),
      onTap: () {
        // Go to marketplace.
        setCurrentIndex(MainPage.pageMarketplace);
      },
    );
  }
}
