import 'package:flutter/material.dart';

class RowColom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: <Widget>[
    //widget 1:
    Text(
          "Hello ankit",textDirection: TextDirection.ltr,
         // textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 30.0,
            
            color: Colors.white,
             )
             ),
   //widgets 2
          Text(
          "Hello ankit",textDirection: TextDirection.ltr,
         // textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 30.0,
            
            color: Colors.white,
            )
          ),
  
//widgets 3
         Expanded(child:Text(
          "Hello ankit",textDirection: TextDirection.ltr,
         // textAlign: TextAlign.center,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 30.0,
            color: Colors.white,
            )
          ),
         )
      ],
    );
  }


}