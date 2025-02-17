import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main()=>runApp(MaterialApp(home: MyApp(),
  
  debugShowCheckedModeBanner: false,
));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final String url="https://swapi.co/api/people";
  List data;
  @override
  void initState(){
    super.initState();
    this.getJsonData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("JSON FOR HTTP"),

      ),
      body: ListView.builder(
        itemCount: data==null?0:data.length,
        itemBuilder:(BuildContext context,int index){
          return Container(
            child:Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                Card(
                  child: Container(
                    child: Text(data[index]['name']+"   "+data[index]['gender']),
                    padding: EdgeInsets.all(20.0),
                  ),
                )
                   


                ],
              ),
            ) ,
          );
        } ,

      ),
    );
  }

  Future<String> getJsonData() async {
    var response=await http.get(
      //encode the url
    Uri.encodeFull(url),
    headers: {"Accepts":"application/json"}

    );
    print(response.body);
    setState(() {
      var convertDataToJson=json.decode(response.body);
      data=convertDataToJson['results'];
    });
   return "Success";
  }
  
}


