import 'package:flutter/material.dart';
import 'package:hack20/app/modules/rate_module_widget.dart';
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
      title: Text("Heartrate"),
    );
  }

  Widget getBodyWidget() {
    return ListView(children: listItems());
  }

  List<Widget> listItems() {
    List<Widget> items = List();

    items.add(RatemoduleWidget());

    return items;
  }

  Widget headerRow() {
    return Text("Heart rate");
  }
}
