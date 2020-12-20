import 'package:flutter/material.dart';

import '../widget/app_drawer.dart';
import '../tab/feed_tab.dart';
import '../tab/leaderboard_tab.dart';
import '../tab/profile_tab.dart';

class HomePage extends StatefulWidget {
  static const ROUTE = '/home';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _appbar_title = 'SaafuMV';
  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    FeedTab(),
    Center(
      child: Text('Map Page'),
    ),
    LeaderboardTab(),
    ProfileTab(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      switch (index) {
        case 0:
          _appbar_title = 'Timeline';
          break;
        case 1:
          _appbar_title = 'Event Map';
          break;
        case 2:
          _appbar_title = 'Ranking';
          break;
        case 3:
          _appbar_title = 'Profile';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asset/img/app_bg.png'),
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.teal.withOpacity(0.5),
              title: Text(
                _appbar_title,
              ),
            ),
            drawer: AppDrawer(),
            body: _widgetOptions.elementAt(_selectedIndex),
            bottomNavigationBar: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.teal.withOpacity(0.5),
                selectedItemColor: Colors.tealAccent,
                unselectedItemColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.timeline,
                    ),
                    label: 'Feed',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.place,
                    ),
                    label: 'Map',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.leaderboard,
                    ),
                    label: 'Ranking',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.person,
                    ),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
