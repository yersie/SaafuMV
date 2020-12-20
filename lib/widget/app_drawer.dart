import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Container(
            height: double.infinity,
            color: Colors.teal.shade200,
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //     fit: BoxFit.cover,
            //     image: AssetImage('asset/img/app_bg.png'),
          ),
          ListView(
            padding: EdgeInsets.zero,
            children: [
              AppBar(
                title: Text('SaafuMV'),
                automaticallyImplyLeading: false,
                backgroundColor: Colors.teal,
                elevation: 0,
              ),
              ListTile(
                title: Text(
                  'Settings',
                  style: Theme.of(context).accentTextTheme.subtitle1,
                ),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
