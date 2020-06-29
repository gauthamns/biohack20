import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:splashscreen/splashscreen.dart';

import 'daily_task.dart';
import 'dashboard.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new OnBoardingPage(),
      title: Text(
        "Welcome to Biohack",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
//      image: Image.asset(
//        'assets/images/ic_launcher.png',
//        fit: BoxFit.fill,
//        width: 200.0,
//      ),
      backgroundColor: Colors.yellowAccent[300],
//      photoSize: 220.0,
      loaderColor: Colors.red,
    );
  }
}


class OnBoardingPage extends StatelessWidget {
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => dailytask()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "Retro / Cyberpunk Future",
          image: Image.asset(
            'assets/images/img2.jpg',
            fit: BoxFit.scaleDown,
            width: 60.0,
          ),
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                  child: Text(
                      "Be it retrofuturism / cyberpunk future on anything beyond human prediction, CHANGE is inevitable.  ",
                      style: bodyStyle
                  ),
              ),

            ],
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Get prepared for biohacking",
          body: "The world is moving towards biohacking. Our objective is to bridge the gap between wellness and bio-hacking.",
          image: Image.asset(
            'assets/images/img2.jpg',
            fit: BoxFit.scaleDown,
            width: 60.0,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Experts",
          image: Image.asset(
            'assets/images/img2.jpg',
            fit: BoxFit.scaleDown,
            width: 60.0,
          ),
          body:
          "we provide mentorship form industrail experts",
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Marketplace",
          image: Image.asset(
            'assets/images/img2.jpg',
            fit: BoxFit.scaleDown,
            width: 60.0,
          ),
          body:
          "Business model",
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Lets start exploring",
          image: Image.asset(
            'assets/images/img2.jpg',
            fit: BoxFit.scaleDown,
            width: 60.0,
          ),
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                  child: Text("Click on Done to start your new journey",
                      style: bodyStyle)),
            ],
          ),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip'),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}