import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:projet_ii/pages/Map_Places.dart';
import 'package:projet_ii/pages/page1.dart';
import 'package:projet_ii/pages/page2.dart';

import 'homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.grey),
      initialRoute: '/Startscreen',
      routes: /*<String,WidgetBuilder>*/ {
        //'/':(context)=> Loading(),
        '/Startscreen':(context) => Startscreen(),
        '/home':(context) => HomePage(),
        '/page1':(context) => Page1Screen(),
        '/page2':(context)=> Page2Screen(),
        '/mapplaces':(context)=> mapplaces(),
      },
    );
  }
}

class Startscreen extends StatefulWidget{
  @override
  // TODO: implement createState
  _Startscreendata createState()=> _Startscreendata();

}

class _Startscreendata extends State<Startscreen>{
  @override
  void initState(){
    super.initState();
    //Timer(Duration(seconds: 13));
    Timer(Duration(seconds: 10,),
          (){
        Navigator.of(context).pushReplacementNamed('/home');
        //Navigator.pushNamed(context, HomeStart());
      },);
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 300.0,),
            Image.asset(
              "assets/favicon.png",
              height: 200.0,
            ),
            SizedBox(height: 30.0,),
            SpinKitFadingCircle(
              color: Colors.blue,
              size: 40.0,
            )
          ],
        ),
      ),
    );
  }
}