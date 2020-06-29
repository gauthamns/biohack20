import 'package:flutter/material.dart';
import 'package:hack20/widgets/common/app_bar.dart';

class HeartrateDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: getBodyWidget(),
    );
  }

  PreferredSizeWidget getAppBar() {
    return appBar(
      title: Text(""),
    );
  }

  Widget getBodyWidget() {
    return ListView(children: listItems());
  }

  List<Widget> listItems() {
    List<Widget> items = List();

    items.add(headerRow());

    return items;
  }

  Widget headerRow() {
    return Text("Heart rate");
  }
}
