import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp/home/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhatsApp',
      home: Scaffold(
         appBar:AppBar(title:Text("WhatsApp Massage",
         style: TextStyle(backgroundColor: Colors.greenAccent,
         fontSize:30.0
         ),
         ),
         backgroundColor: Colors.greenAccent,
         ),
          body: getListItem(),
              ),
          );
                  
                
          }
        /*  list view
          getListView() {
            var listView=ListView(children: <Widget>[
               
               ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                // onTap:openContainer(),
                 ),

               ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                 ),

               ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                 ), 

              ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                 ),

              ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                 ),

              ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                 ),

              ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                 ),

              ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                 ),

              ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                 ),

              ListTile(
                 leading: Icon(Icons.account_circle,size: 40.0),
                 title: Text("Ankit"),
                 subtitle: Text("patidar from lalakhedi"),
                 trailing: Icon(Icons.av_timer),
                 ),





            ],);
            return listView;
          }

          */
}

List<String> getListElement(){
  var items=List<String>.generate(1000, (counter)=>"Item $counter");
  return items;
}
Widget getListItem(){
  var listItem=getListElement();
  var list=ListView.builder(
    itemBuilder:(context,index){
    return ListTile(
      leading: Icon(Icons.account_circle,size: 50,),
      title: Text(listItem[index]),
      onTap: (){
        
      },
    );
    }
  );
  return list;
}
