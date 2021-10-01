
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class mapplaces extends StatefulWidget{
  @override
  _mapplacesState createState() => _mapplacesState();

}

class _mapplacesState extends State<mapplaces>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white70,
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  "Map Ici",
                  style:TextStyle(
                    color:Colors.black,
                    fontSize:32.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}