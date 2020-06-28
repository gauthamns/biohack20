import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:splashscreen/splashscreen.dart';

import 'dashboard.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new OnBoardingPage(),
      title: Text(
        "welcome to Biohack",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
        ),
        textAlign: TextAlign.center,
      ),
      image: Image.asset(
        'assets/images/ic_launcher.png',
        fit: BoxFit.fill,
        width: 200.0,
      ),
      backgroundColor: Colors.yellowAccent[300],
      photoSize: 220.0,
      loaderColor: Colors.red,
    );
  }
}


class OnBoardingPage extends StatelessWidget {
  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => bashboard()),
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
          title: "SOCIAL GOOD",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                  child: Text(
                      "Social good apps ",
                      style: bodyStyle)),

            ],
          ),
          image: Image.asset(
            'assets/images/img1.jpg',
//            fit: BoxFit.fill,
//            width: 60.0,
          ),
//          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Get Prepared",
          body: "polish our brain against of others",
          image: Image.asset(
            'assets/images/img2.jpg',
            fit: BoxFit.scaleDown,
            width: 60.0,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Learn as you go",
          body:
          "Download the biohack app ",
          image: Image.asset(
            'assets/images/img3.jpg',
            fit: BoxFit.scaleDown,
            width: 60.0,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "there is no limit for learning",
          body:
          "In vain have you acquired if you have not imparted it to others",
          image: Image.network(
              "https://flutter.io/images/catalog-widget-placeholder.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "experts",
          body:
          "we provide mentorship form industrail experts",
          image: Image.network(
              "https://flutter.io/images/catalog-widget-placeholder.png"),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "Lets start exploring",
          bodyWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Expanded(
                  child: Text("Click on Done to start your new journey",
                      style: bodyStyle)),
            ],
          ),
          image: Image.network(
              "https://flutter.io/images/catalog-widget-placeholder.png"),
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