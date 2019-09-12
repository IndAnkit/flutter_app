import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(debugShowCheckedModeBanner: false,
home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hello ",style: TextStyle(
        fontFamily:'charm'
      ),),),
    );
  }
}
