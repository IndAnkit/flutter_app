import 'package:flutter/material.dart';
import 'package:nexa/singup.dart';

import 'Home.dart';
import 'LogIn.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),

));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Home();

  }
}
