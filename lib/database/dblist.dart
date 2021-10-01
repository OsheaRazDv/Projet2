import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget dbTab (String imgurl,String placeName, int rating){

 //list<String>urls = [];
  return Card(
    margin: EdgeInsets.symmetric(vertical: 4.0,horizontal: 20),
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0),
    ),
    elevation: 8.0,
    child: InkWell(
      onTap: (){},
      child: Container(
        color: Colors.green[300],
        width: 300.0,
        height: 250,
        child: Padding(
          padding: EdgeInsets.all(10.0),
          //padding: EdgeInsets.symmetric(horizontal: 200,vertical: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  for(var i=0;i<rating;i++)
                    Icon(
                        Icons.favorite,
                        color:Colors.white,
                    ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          placeName,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}