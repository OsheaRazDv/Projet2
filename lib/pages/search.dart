import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Search extends SearchDelegate<String>{
  final cities = [
    "Antsiranana",
    "SEE & DO",
    "PLACES",
    "STAY",
    "Popular cities",
    "Item1",
  ];
  final recentCities = [
    "Antsiranana",
    "SEE & DO",
    "PLACES",
    "STAY",
    "Popular cities",
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    // TODO: implement buildActions
    return [
      IconButton(
          onPressed: (){
            query = "";
          },
          icon: Icon(Icons.clear))];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    return IconButton(
      onPressed: (){
        close(context, " ");
      },
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
   final suggestionList = query.isEmpty ? recentCities : cities;
   return ListView.builder(
       itemBuilder: (context, index)=> ListTile(
         leading: Icon(Icons.search),
         title: Text(suggestionList[index]),
       ),
     itemCount: suggestionList.length,
   );
  }

}
