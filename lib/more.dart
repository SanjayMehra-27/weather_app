import 'dart:async';
//import 'dart:html';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';

import 'drawer.dart';
class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {

  bool isConnected = false;
  StreamSubscription<ConnectivityResult>? sub;
  @override
  void initState(){
    super.initState();
    sub = Connectivity().onConnectivityChanged.listen((result) {
      setState(() {
        isConnected = (result != ConnectivityResult.none);
      });
    });
  }
  @override
  void dispose(){
    sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:Text("Settings",
        textAlign: TextAlign.start,
      )
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: StreamBuilder(
            stream: Connectivity().onConnectivityChanged,
            builder: (BuildContext context,
                AsyncSnapshot<ConnectivityResult> snapshot){
              if(snapshot != null && snapshot.hasData && snapshot.data != ConnectivityResult.none){
                return Icon(Icons.wifi_off_outlined,size: 50,);
              } else {
                return Text("Change Settings",textScaleFactor: 2,);
              }
            }
        ),
        // child: isConnected ? Icon(Icons.wifi_off_outlined,size: 50,)
        //     : Text("Change Settings",textScaleFactor: 2,)
      ),
    );
  }
}