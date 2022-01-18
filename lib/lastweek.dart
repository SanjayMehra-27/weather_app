import 'package:flutter/material.dart';

import 'drawer.dart';
class LastWeek extends StatelessWidget {
  const LastWeek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Text("Last One Week Weather Report")
          ],
        ),
        appBar: AppBar(
          title: Text(
            'Weather', style: TextStyle(fontWeight: FontWeight.bold),),
          backgroundColor: Colors.orangeAccent,
        ),
        drawer:NavigationDrawer()
    );
  }
}
