import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:projet_ii/database/db.dart';

import 'pages/search.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return new Scaffold(
      //////////////en tete de la page ////////////
      appBar: AppBar(
        backgroundColor: Colors.white10,
        title: Image.asset(
          "assets/logo.png",
          height: 90.0,
          width: 100.0,
        ),
        actions: <Widget>[
          new IconButton(
            onPressed: () {
              showSearch(context: context, delegate: Search());
            },
            iconSize: 25.0,
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){},
            iconSize: 25.0,
            icon: Icon(Icons.language),
          ),
        ],
      ),
      drawer: new Drawer(
        child: ListView(
          children:<Widget> [
            ListTile(
              leading: Icon(Icons.login),
              title: Text("Login"),
            ),
            ListTile(
              leading:Icon(Icons.assistant_navigation),
              title: Text ("Destination"),
            ),
            ListTile(
              leading:Icon(Icons.home),
              title: Text ("Home"),
            ),
            ListTile(
              leading: Icon(Icons.contact_page),
              title: Text("contact"),
            ),
          ],
        ),

      ),
      body: new SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 0.5,),
            //text 1
            new Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      children: <Widget>[
                        FlatButton.icon(
                          onPressed: (){
                            Navigator.pushNamed(context, '/mapplaces',);
                          },
                          icon: Icon(Icons.location_on),
                          label:Text('DISCOVER PLACE AROUND',style: TextStyle(color: Colors.grey,),),
                        ),
                        //SizedBox(height: 10.0,),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "My curent position",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: .5,),
            /////////////////////////////////////////
            //presentation 1 les resto proximites
            new Container(
              height: size.height *.4,
              //color: Colors.red,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context,int index){
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 300,
                      color: Colors.blue,
                      child: Stack(
                        children: <Widget>[
                          Image(
                            height:220.0,
                            width: 300.0,
                            image: AssetImage('assets/images/deux.jpg'),
                            fit: BoxFit.cover,
                          ),
                          Positioned(
                            bottom: 30,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text('Trading Resto',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),),
                          Positioned(
                              bottom: 10,
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Text('Petit Prix                                         See More',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                          ),
                        ],
                      ),
                    );
                  }),

            ),
            ////////////////////////////////////////////////
            //text 2 recently viewed
            SizedBox(height: .5,),
            new Container(
              color: Colors.white70,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      children:[
                        Text(
                          "RECENTLY VIEWED",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //recently viewed
                  SizedBox(height: 10,),
                  Container(
                    height: 300.0,
                    child: ListView.builder(
                        scrollDirection:Axis.horizontal,
                        //itemCount: hotels.length,
                        itemBuilder: (BuildContext context,int index){
                          return Container(
                            margin: EdgeInsets.all(10.0),
                            width: 200.0,
                            color: Colors.blue,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: <Widget>[
                                Image(
                                  height:200.0,
                                  width: 200.0,
                                  image: AssetImage('assets/images/trois.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  bottom:0.5,
                                  child: Container(
                                    height: 130.0,
                                    width: 200.0,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: EdgeInsets.all(10.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'HELIA RESTAURANT',
                                            style: TextStyle(
                                              fontSize: 19.0,
                                              fontWeight: FontWeight.w800,
                                              letterSpacing: 0.2,
                                            ),
                                          ),
                                          Text(
                                            'Restaurant | Bar | Hotel',
                                            style: TextStyle(
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w800,
                                              letterSpacing: 0.2,
                                              color: Colors.blueGrey,
                                            ),
                                          ),
                                          FlatButton.icon(
                                            icon: Icon(Icons.circle_notifications),
                                            label:Text('4,5 (26 reviews)',style: TextStyle(color: Colors.grey,),
                                            ), onPressed: () { },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );//Text(hotels[index].description);
                        },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),// a la ligne
            ////////////////////////////////////////////////////////////////////
            //Popular cyties
            SizedBox(height: 10,),
            new Container(
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal:20.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'Popular Cityes',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 300.0,
                    child: ListView.builder(
                      scrollDirection:Axis.horizontal,
                      itemCount: citys.length,
                      itemBuilder: (BuildContext context,int index){
                        return GestureDetector(
                          onTap: ()=>Navigator.pushNamed(context, '/page2'),
                            child:Container(
                              margin: EdgeInsets.all(10.0),
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  image: DecorationImage(
                                    image: AssetImage(citys[index].image,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            ///////////////////////////////////////////////////////////////////
            //NEARBY MORE
            SizedBox(height: 10,),
            new Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'NEARBY',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                          ),
                        ),
                        Text(
                          'MORE',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 300.0,
                    child: ListView.builder(
                      scrollDirection:Axis.horizontal,
                      //itemCount: hotels.length,
                      itemBuilder: (BuildContext context,int index){
                        return Container(
                          margin: EdgeInsets.all(10.0),
                          width: 200.0,
                          color: Colors.blue,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom:0.5,
                                child: Container(
                                  height: 130.0,
                                  width: 200.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'HELIA RESTAURANT',
                                          style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: 0.2,
                                          ),
                                        ),
                                        Text(
                                          'Restaurant | Bar | Hotel',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: 0.2,
                                            color: Colors.blueGrey,
                                          ),
                                        ),
                                        FlatButton.icon(
                                          onPressed: (){},
                                          icon: Icon(Icons.circle_notifications),
                                          label:Text('4,5 (26 reviews)',style: TextStyle(color: Colors.grey,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );//Text(hotels[index].description);
                      },
                    ),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////////////////////////////////////
              //Places Types
            SizedBox(height: 10,),
            new Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text('PLACES TYPES',
                          style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 120,
                    //color: Colors.red,
                    child: ListView.builder(
                        itemCount: logos.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,int index){
                          return Container(
                            margin: EdgeInsets.all(10),
                            height: 120,
                            width: 110,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  color: Colors.black45.withOpacity(.5),
                                ),
                              ],
                              color: Colors.white,
                              borderRadius:  BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Image.asset(
                                      logos[index].image,
                                      height: 50,
                                      alignment: Alignment.topLeft,
                                    ),
                                  ),
                                  Text(
                                    logos[index].description,
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
            ////////////////////////////////////////////////////////////////////
            //offers more
            SizedBox(height: 10,),
            new Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'OFFERS',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                        Text(
                          'MORE',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    height: 300.0,
                    child: ListView.builder(
                      scrollDirection:Axis.horizontal,
                      //itemCount: hotels.length,
                      itemBuilder: (BuildContext context,int index){
                        return Container(
                          margin: EdgeInsets.all(10.0),
                          width: 200.0,
                          color: Colors.blue,
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                bottom:0.5,
                                child: Container(
                                  height: 130.0,
                                  width: 200.0,
                                  color: Colors.white,
                                  child: Padding(
                                    padding: EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'HELIA RESTAURANT',
                                          style: TextStyle(
                                            fontSize: 19.0,
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: 0.2,
                                          ),
                                        ),
                                        Text(
                                          'Restaurant | Bar | Hotel',
                                          style: TextStyle(
                                            fontSize: 13.0,
                                            fontWeight: FontWeight.w800,
                                            letterSpacing: 0.2,
                                            color: Colors.blueGrey,
                                          ),
                                        ),
                                        FlatButton.icon(
                                          onPressed: (){},
                                          icon: Icon(Icons.circle_notifications),
                                          label:Text('4,5 (26 reviews)',style: TextStyle(color: Colors.grey,),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
