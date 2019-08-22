import 'package:flutter/material.dart';
import 'package:nexanapp/home/Home.dart';
//import 'package:flutter/src/widgets/framework.dart';

void main() =>runApp(MyApplictaion());

class MyApplictaion extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'NexanTech',
      home: Home()
    );
  }
}