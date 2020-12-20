import 'package:flutter/material.dart';

import '../widget/app_drawer.dart';
import '../widget/bottom_nav.dart';

class HomePage extends StatefulWidget {
  static final ROUTE = '/home';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.top]);
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
            bottomNavigationBar: BottomNav(),
            backgroundColor: Colors.transparent,
            drawer: AppDrawer(),
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: const Text('SaafuMV'),
              // automaticallyImplyLeading: false,
            ),
            body: Container(),
          ),
        ],
      ),
    );
  }
}
