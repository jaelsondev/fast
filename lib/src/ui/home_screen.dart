import 'package:flutter/material.dart';

import 'cart_screen.dart';
import 'event_screen.dart';
import 'overview_screen.dart';
import 'profile_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [OverviewScreen(),CartScreen(), ProfileScreen()];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF282828),
      body: _children.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        // backgroundColor: Color(0xFF2C2C2C),
        backgroundColor: Color(0xFF2C2C2C),
        selectedItemColor: Color(0xFFFD7A4A),
        unselectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              activeIcon: Icon(Icons.home, color: Color(0xFFFD7A4A)),
              title: Text('Início')),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.search, color: Colors.white),
          //     activeIcon: Icon(Icons.search, color: Color(0xFFFD7A4A)),
          //     title: Text('Pesquisar')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: Colors.white),
              activeIcon: Icon(Icons.shopping_cart, color: Color(0xFFFD7A4A)),
              title: Text('Carrinho')),
          BottomNavigationBarItem(
              icon: Icon(Icons.face, color: Colors.white),
              activeIcon: Icon(Icons.face, color: Color(0xFFFD7A4A)),
              title: Text('Perfil'))
        ],
      ),
    );
  }
}
