import 'package:flutter/material.dart';

import '../Cart/cart_screen.dart';
import '../Overview/overview_screen.dart';
import '../Profile/profile_screen.dart';
import '../TabNavigator/tab_navigator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    OverviewScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
  };

  // void _selectTab(int tabItem) {
  //   setState(() {
  //     _currentIndex = tabItem;
  //   });
  // }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _selectTab(int tabItem) {
    if (tabItem == _currentIndex) {
      navigatorKeys[tabItem].currentState.popUntil((route) => route.isFirst);
    } else {
      setState(() => _currentIndex = tabItem);
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          final isFirstRouteInCurrentTab =
              !await navigatorKeys[_currentIndex].currentState.maybePop();
          if (isFirstRouteInCurrentTab) {
            // if not on the 'main' tab
            if (_currentIndex != 0) {
              // select 'main' tab
               _selectTab(0);
              // back button handled by app
              return false;
            }
          }
          // let system handle back button if we're on the first route
          return isFirstRouteInCurrentTab;
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Stack(children: <Widget>[
            _buildOffstageNavigator(0),
            _buildOffstageNavigator(1),
            _buildOffstageNavigator(2),
          ]),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            onTap: onTabTapped,
            unselectedItemColor: Colors.grey[800],
            currentIndex: _currentIndex,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home, color: Colors.grey[800], size: 26),
                  activeIcon: Icon(Icons.home, color: Theme.of(context).primaryColor, size: 26),
                  title: Text("", style: TextStyle(fontSize: 0))),
              // BottomNavigationBarItem(
              //     icon: Icon(Icons.search, color: Colors.grey[800], size: 26),
              //     activeIcon: Icon(Icons.search, color: Theme.of(context).primaryColor, size: 26),
              //     title: Text("", style: TextStyle(fontSize: 0))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart, color: Colors.grey[800], size: 26),
                  activeIcon:
                      Icon(Icons.shopping_cart, color: Theme.of(context).primaryColor, size: 26),
                  title: Text("", style: TextStyle(fontSize: 0))),
              BottomNavigationBarItem(
                  icon: Icon(Icons.face, color: Colors.grey[800], size: 26),
                  activeIcon: Icon(Icons.face, color: Theme.of(context).primaryColor, size: 26),
                  title: Text("", style: TextStyle(fontSize: 0)))
            ],
          ),
        ));
  }

  Widget _buildOffstageNavigator(int tabItem) {
    return Offstage(
      offstage: _currentIndex != tabItem,
      child: TabNavigator(
        navigatorKey: navigatorKeys[tabItem],
        tabItem: _children[tabItem],
      ),
    );
  }
}
