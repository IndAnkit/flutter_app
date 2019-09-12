import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("JSON EXAMPLE"),),

      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List data;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FutureBuilder(
         future:DefaultAssetBundle.of(context).loadString("load_json/person.json"),
          builder: (context,snapshot){
          var myData=json.decode(snapshot.data.toString());
          return ListView.builder(itemBuilder: (context,int index){
            return Card(

              elevation: 10.0,
              borderOnForeground: true,
              shape:new RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                     Text("Name :"+ myData[index]['name']),
                     Text("Age : "+myData[index]['age']),
                    Text("Place :" +myData[index]['place']),
                    Text("Gender : "+myData[index]['gender']),
                    Text("Hair color:"+myData[index]['hair_color'])
                  ],
                ),
              ),
            );
          },
          itemCount: myData==null?0:myData.length,
          );

          },

        ),
      ),
    );
  }
}
