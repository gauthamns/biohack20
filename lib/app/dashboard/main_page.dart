import 'package:flutter/material.dart';
import 'package:hack20/app/dashboard/dashboard_page.dart';
import 'package:hack20/app/marketplace/market_main_page.dart';
import 'package:hack20/app/tasks/tasks_main_page.dart';
import 'package:hack20/config/prefs.dart';
import 'package:hack20/main.dart';
import 'package:hack20/widgets/common/app_bar.dart';
import 'package:hack20/widgets/common/navigation_icon_view.dart';

class MainPage extends StatefulWidget {
  static const int pageMarketplace = 1;
  static const int pageDashboard = 0;
  static const int pageTasks = 2;

  _State createState() => _State();
}

class _State extends State<MainPage> with TickerProviderStateMixin {
  bool isLoading = true;
  int _currentIndex = 0;
  List<NavigationIconView> _navigationViews = List();

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
      Navigator.of(context).pushNamed(MyApp.routeRegister);
    }

    // initial loading is done. Let's get to the main action
    isLoading = false;
    updateState();
  }

  updateState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return loadingWidget();
    }

    return dashboardWidget();
  }

  Widget loadingWidget() {
    return Container(
      child: Center(
        child: Text("Loading..."),
      ),
    );
  }

  Widget dashboardWidget() {
    return Scaffold(
      appBar: getAppBar(),
      body: getBodyWidget(),
      bottomNavigationBar: getBottomNavigationBar(),
    );
  }

  buildNavigationViews() {
    _navigationViews.clear();
    _navigationViews.add(dashboardNavigationView());
    _navigationViews.add(marketplaceNavigationView());
    _navigationViews.add(tasksNavigationView());
  }

  NavigationIconView dashboardNavigationView() {
    return new NavigationIconView(
      icon: const Icon(Icons.dashboard),
      title: "Dashboard",
      vsync: this,
    );
  }

  NavigationIconView marketplaceNavigationView() {
    return new NavigationIconView(
      icon: const Icon(Icons.collections),
      title: "Marketplace",
      vsync: this,
    );
  }

  NavigationIconView tasksNavigationView() {
    return new NavigationIconView(
      icon: const Icon(Icons.list),
      title: "Tasks",
      vsync: this,
    );
  }

  Widget getBottomNavigationBar() {
    buildNavigationViews();
    return BottomNavigationBar(
      items: _navigationViews
          .map((NavigationIconView navigationView) => navigationView.item)
          .toList(),
      currentIndex: _currentIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _navigationViews[_currentIndex].controller.reverse();
          _currentIndex = index;
          _navigationViews[_currentIndex].controller.forward();
        });
      },
    );
  }

  PreferredSizeWidget getAppBar() {
    return appBar(
      title: Text("Dashboard"),
    );
  }

  Widget getBodyWidget() {
    switch (_currentIndex) {
      case MainPage.pageMarketplace:
        return MarketMainPage();
      case MainPage.pageTasks:
        return TasksMainPage();
      default:
        return DashboardPage(setCurrentIndex);
    }
  }

  void setCurrentIndex(int index) {
    _currentIndex = index;
    updateState();
  }
}
