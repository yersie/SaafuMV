import 'package:flutter/material.dart';

import '../provider/event_provider.dart';
import '../widget/app_drawer.dart';
import '../widget/bottom_nav.dart';
import '../widget/event_card.dart';

class HomePage extends StatelessWidget {
  static const ROUTE = '/home';

  final events = Events().events;

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
            bottomNavigationBar: BottomNav(),
            backgroundColor: Colors.transparent,
            drawer: AppDrawer(),
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: const Text('SaafuMV'),
            ),
            body: ListView(
              physics: AlwaysScrollableScrollPhysics(),
              children: <Widget>[...events.map((e) => EventCard(e)).toList()],
            ),
          ),
        ],
      ),
    );
  }
}
