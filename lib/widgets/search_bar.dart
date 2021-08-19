import 'package:flutter/material.dart';
import 'package:upahaar_solutions/constants/colors.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35.0,
      margin: EdgeInsets.only(top: 4.0, bottom: 20.0, left: 16.0, right: 16.0),
      //margin: EdgeInsets.only(top: 4.0, bottom: 16.0),
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: TextFormField(
        decoration: InputDecoration(
          
          contentPadding: new EdgeInsets.symmetric(vertical: 0.0),
          prefixIcon: Padding(
            padding: EdgeInsets.all(0.0),
            child: Icon(
              Icons.search,
              color: orangeFontColor,
            ),
          ), // i
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.black26,
            fontSize: 14.0,
            
          ),
          border: OutlineInputBorder(
            //borderRadius: BorderRadius.circular(50.0),
          ),
        ),
      ),
      );
  }
}
