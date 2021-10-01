//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
//import 'package:flutter_svg/flutter_svg.dart';


class Page1Screen extends StatefulWidget{
  @override
  _Page1ScreenState createState() => _Page1ScreenState();

}

class _Page1ScreenState extends State<Page1Screen>{
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return Scaffold(
      body: new SingleChildScrollView(
        child: Column(
          children: <Widget>[
            new Container(
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 300,//MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0.0,2.0),
                          blurRadius: 4.0,
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.0),
                      child: Image(
                        image: AssetImage("assets/images/uns.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: ()=>Navigator.pop(context),),
                        Row(
                          children: [
                            IconButton(
                                onPressed: ()=> Navigator.pop(context),
                                iconSize: 25.0,
                                color: Colors.black,
                                icon: Icon(Icons.search),
                            ),
                            IconButton(
                              onPressed: ()=> Navigator.pop(context),
                              iconSize: 25.0,
                              color: Colors.black,
                              icon: Icon(Icons.language),
                            ),
                            /*DropdownButton(
                                items: [
                                  DropdownMenuItem<String>(
                                    value:"english",
                                    child: Center(child:Text("EN"),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value:"French",
                                    child: Center(child:Text("FR"),
                                    ),
                                  ),
                                  DropdownMenuItem<String>(
                                    value:"Malagasy",
                                    child: Center(child:Text("ML"),
                                    ),
                                  ),
                                ],onChanged: (_value)=>{
                                  print(_value.toString()),
                            },
                            ),*/
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    bottom: 80.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'DIEGO SUAREZ MANGER, BOIRE',
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.2,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Su e Gui',
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.2,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '4.5',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w800,
                                letterSpacing: 0.2,
                                color: Colors.blue,
                              ),
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.blue,
                            ),
                            Text(
                              '(2 reviews)-free',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w900,
                                letterSpacing: 0.2,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Restaurant | Parc | Bars',
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.2,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
            //logo svg wifi coctails
            new Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 40,right: 30,bottom: 30,top:30),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/svg/coctails.svg",
                          width: 100,
                          height: 150,
                        ),
                        SvgPicture.asset(
                          "assets/svg/wifi.svg",
                          width: 100,
                          height: 150,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //Apercu
            new Container(
              color: Colors.white70,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children:[
                        Text(
                          "Apercue",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //text
            new Container(
              color: Colors.white70,
              child: Center(
                child: Text(
                  "Lorem ipsum dolor sit amet,"
                      " consectetur adipiscing elit,"
                      " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                      " Pharetra magna ac placerat vestibulum lectus mauris."
                      " Sit amet nulla facilisi morbi tempus."
                      " Aliquam etiam erat velit scelerisque. El",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12.0,
                    fontFamily: "Raleway",
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            //baniere publicitaire
            SizedBox(height: 10,),
            new Container(
              color: Colors.white70,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children:[
                        Text(
                          "baniere publicitaire",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            new Container(
              child: Padding(
                padding: EdgeInsets.all(10,),
                child: Container(
                  child: Text('Votre Pub Ici'),
                  color: Colors.blueGrey,
                  alignment: Alignment.center,
                  constraints: BoxConstraints.tightForFinite(
                    height: 250,
                    width: 450,
                  ),
                ),
              ),
            ),
            //location et maps
            new Container(
              color: Colors.white70,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children:[
                        Text(
                          "location & maps",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //
            new Container(
              child: Padding(
                padding: EdgeInsets.all(10,),
                child: Container(
                  child: Text('Emplacement de la carte'),
                  color: Colors.blueGrey,
                  alignment: Alignment.center,
                  constraints: BoxConstraints.tightForFinite(
                    height: 250,
                    width: 450,
                  ),
                ),
              ),
            ),
            //Contact info
            new Container(
              color: Colors.white70,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children:[
                        Text(
                          "Contact info",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            //Heure d'ouverture
            new Container(
              color: Colors.white70,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children:[
                        Text(
                          "Heure d'ouverture",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 30,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //mbola amboarina
            new Container(),
          ],
        ),
      ),
    );
  }
}