import 'package:flutter/material.dart';
import 'package:hack20/config/prefs.dart';
import 'package:hack20/main.dart';

class DashboardPage extends StatefulWidget {
  _State createState() => _State();
}

class _State extends State<DashboardPage> {
  @override
  void initState() {
    super.initState();

    initActions();
  }

  // Initial actions.
  initActions() async {
    Prefs prefs = Prefs.instance;
    await prefs.load();

    // Now, if user is not signed in, go to introduction page.
    if (!prefs.isUserSignedIn()) {
      Navigator.of(context).pushNamed(MyApp.RouteRegister);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Biohack!"),
      ),
    );
  }
}
