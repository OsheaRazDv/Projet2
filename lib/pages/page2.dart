import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:projet_ii/database/dblist.dart';
import 'package:projet_ii/pages/search.dart';

class Page2Screen extends StatefulWidget{
  @override
  _Page2ScreenState createState() => _Page2ScreenState();

}

class _Page2ScreenState extends State<Page2Screen>{
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
                  //image background
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
                        image: AssetImage("assets/images/cinq.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  //Volet navbar
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
                              onPressed: (){
                                showSearch(
                                    context: context,
                                    delegate: Search(),
                                );
                                },
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
                    left: 50.0,
                    bottom: 90.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'MADAGASCAR',
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 19.0,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.2,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Diego Suarez',
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 0.2,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Diego Suarez',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w900,
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
            //introduction
            SizedBox(height: 20,),
            //Introduction
            new Container(
              color: Colors.white70,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children:[
                        Text(
                          "Introducing",
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
            SizedBox(height: 10,),
            new Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: [
                        DefaultTabController(
                          length: 3,
                          child: Expanded(
                            child: Column(
                              children: [
                                TabBar(
                                  indicatorColor:Color(0xfffe8c68),
                                  unselectedLabelColor:Color(0x9E9E9EFF),
                                  labelColor: Color(0xfffe8c68),
                                  labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
                                  tabs: <Widget>[
                                    Tab(
                                      text: "SEE & DO",
                                    ),
                                    Tab(
                                      text: "EAT & DRINK",
                                    ),
                                    Tab(
                                      text: "Stay",
                                    ),
                                  ],
                                ),
                                Container(
                                  height: 500.0,
                                  child: TabBarView(
                                    children: [
                                      Container(
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            dbTab("imgurl", "placeName", 4),
                                            dbTab("imgurl", "placeName", 2),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          children: [
                                            dbTab("imgurl", "placeName", 2),
                                            dbTab("imgurl", "placeName", 3),
                                            dbTab("imgurl", "placeName", 5),
                                            dbTab("imgurl", "placeName", 3),
                                            dbTab("imgurl", "placeName", 3),
                                            dbTab("imgurl", "placeName", 3),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: ListView(
                                          scrollDirection: Axis.vertical,
                                          children: [],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /*new Container(
              height: 500.0,
              child: TabBarView(
                children: [
                  Container(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        dbTab("imgurl", "placeName", 4),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [
                        dbTab("imgurl", "placeName", 2),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      children: [

                      ],
                    ),
                  )
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}

