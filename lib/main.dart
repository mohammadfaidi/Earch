
import 'dart:async';

import 'package:earth/home.dart';
import 'package:flutter/material.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      
      debugShowCheckedModeBanner: false,
      title: "Earch APP",
      home: splashScreen2(),
      // initialRoute: "myContacts",
      // routes: {
      //   "myContacts": (BuildContext context) => Contacts(),
      //   "myGallery": (BuildContext context) => Gallery(),
      //   "searchPage": (BuildContext context) => SearchPage(),
      // },
      // home: Gallery(),
    );
  }
}
class splashScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SplashScreenView(navigateRoute: MyHomePage(),
    duration: 5000,
    imageSize: 180,
    imageSrc: "images/ear.png",
    text: "Earch App",
    backgroundColor: Colors.white,
    textType: TextType.ColorizeAnimationText,
      textStyle: TextStyle(
        fontSize: 40.0,
      ),
       colors: [
        Colors.purple,
        Colors.blue,
        Colors.yellow,
        Colors.red,
      ],
    );
  
  
  }



}

class splashScreen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   var timer = Timer(Duration(seconds: 5),(){
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>splashScreen()));
   });
   return Scaffold(
     body: Center(child: CircularProgressIndicator(),),
   );
  
  
  }



}