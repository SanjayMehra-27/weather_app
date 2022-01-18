import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:weather_app/view/location_screens.dart';


void main() =>runApp(SplashScreen());

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,

      home: AnimatedSplashScreen(

        splash:Image.asset(
          'images/splash.jpg',  height: 700,width: 700,),


        nextScreen: LocationScreen(),

        splashTransition: SplashTransition.scaleTransition,

        //backgroundColor: Colors.yellowAccent,


        //plash:Container(
//height:500,
        // width:500,
        //color: Colors.blueAccent,
        //  ),

      ),

    );



  }
}