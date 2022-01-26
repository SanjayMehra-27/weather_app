import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:weather_app/lastweek.dart';
//import 'package:weather_app/location_screens.dart';
import 'package:weather_app/view/location_screens.dart';
import 'package:weather_app/view/notificationui.dart';

import 'more.dart';
import 'lastweek.dart';

//import 'package:weather_app/location_screen.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final padding=EdgeInsets.symmetric(horizontal: 20);
    return Drawer(
      child: ListView(

        padding: EdgeInsets.zero,
        children: <Widget>[


          ListTile(
            selected: true,
            leading: Icon(Icons.wb_sunny_outlined),
            title: Text('TodayWeather', style: TextStyle(
              color: Colors.black,
            ),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:
                    (context) => LocationScreen()),
              );
            },
          ),
          ListTile(
            selected: true,
            leading: Icon(Icons.history_toggle_off_outlined),
            title: Text(
              'LastOneWeek', style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:

                    (context) => LastWeek()),
              );
            },
          ),
          ListTile(
            selected: true,
            leading: Icon(Icons.settings),
            title: Text('More', style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:
                    (context) => More()),
              );
            },
          ),
          ListTile(
            selected: true,
            leading: Icon(Icons.notification_important),
            title: Text('Notification', style: TextStyle(color: Colors.black),),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder:
                    (context) => NotificationPage()),
              );
            },
          ),
        ],
      ),

    );


  }
}
//check
//check2
