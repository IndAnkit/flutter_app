import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Chat",
       home: Scaffold(
         appBar: AppBar(title: Text("Chat")),

         body: Container(
           child: Text("welcome")
         ),
       
       ), 

     
      );
  }
}