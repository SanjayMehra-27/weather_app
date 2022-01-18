import 'dart:html';

import 'package:flutter/material.dart';

import 'drawer.dart';
class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'More', style: TextStyle(fontWeight: FontWeight.bold),),
        backgroundColor: Colors.orangeAccent,
      ),
      drawer:NavigationDrawer(),

      body: Container(
        child: Column(
          children: [
            Text("More"),
          ],
        ),
      ),
    );
  }
}
