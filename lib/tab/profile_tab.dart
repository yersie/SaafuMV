import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/auth_provider.dart';

class ProfileTab extends StatefulWidget {
  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://media.vanityfair.com/photos/5dd70131e78810000883f587/4:3/w_1115,h_836,c_limit/baby-yoda-craze.jpg",
            ),
            radius: 50.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Baby Yoda',
            style: Theme.of(context).accentTextTheme.headline5,
          ),
          SizedBox(
            height: 10.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Baby Yoda, I am. Help here, I will.',
                style: Theme.of(context).accentTextTheme.subtitle1,
              ),
            ],
          ),
          SizedBox(
            height: 16.0,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            clipBehavior: Clip.antiAlias,
            color: Colors.teal.withOpacity(0.8),
            elevation: 5.0,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Events Posted",
                          style: Theme.of(context).accentTextTheme.subtitle2,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "215",
                          style: Theme.of(context).accentTextTheme.subtitle1,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "XP",
                          style: Theme.of(context).accentTextTheme.subtitle2,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "28.5K",
                          style: Theme.of(context).accentTextTheme.subtitle1,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text(
                          "Followers",
                          style: Theme.of(context).accentTextTheme.subtitle2,
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "120",
                          style: Theme.of(context).accentTextTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Card(
            color: Colors.teal.withOpacity(0.5),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Text(
                  'Badges',
                  style: Theme.of(context).accentTextTheme.subtitle1,
                ),
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundColor: Colors.tealAccent,
                          child: Image.asset('asset/img/badge.png'),
                          radius: 50,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
