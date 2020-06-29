import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class bashboard extends StatefulWidget {
  @override
  _bashboardState createState() => _bashboardState();
}

class _bashboardState extends State<bashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(child: Text("CODING ZOMBIES"),),
            ],
          ),
        ),
      ),
      ),
    );
  }
}
