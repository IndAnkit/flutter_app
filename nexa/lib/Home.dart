import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{
  String _data="";
  FirebaseDatabase database;
  DatabaseReference dref;


  @override
  Widget build(BuildContext context) {
    database=FirebaseDatabase.instance;
    dref=database.reference();
    return Scaffold(
      floatingActionButton: FloatingActionButton(

        onPressed: (){
          AlertDialog(
            actions: <Widget>[
              Text("Hello")
            ],
          );
        },
        child: Icon(Icons.add),


      ),
      appBar: AppBar(title: Text("CRUD"),),
      body: Container(

        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Data",
              ),
              onChanged: (value){
              this._data=value;
              },
            ),
            SizedBox(height: 10.0,),
            RaisedButton(onPressed:(){
              addData(this._data);

              AlertDialog(
                content: Text("Inserted"),
              );
            },
            child: Text("Send"),
            ),
            SizedBox(height: 10.0,),
            Text(this._data),

          ],
        ),

      ),
      );
  }
  Future<void> addData(String data){
    dref.set(data);

  }
}

