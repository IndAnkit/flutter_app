import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:nexa/singup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Home.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String _email,_pass;
  var evalue=TextEditingController();
  var pvalue=TextEditingController();

  void initState(){
    super.initState();
    _loadData();
  }
  _loadData() async{
    SharedPreferences preferences=await SharedPreferences.getInstance();


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Nexa"),) ,
    body: Padding(
        padding: EdgeInsets.all(15.0),
        child: ListView(
        children: <Widget>[
          Icon(Icons.account_circle,size: 80.0,),
          SizedBox(height: 15.0,),
         TextField(
           controller: evalue,
           decoration: InputDecoration(
             hintText: "Email"

           ),
           onChanged: (value){
             _email=value;
           },
         ),
          SizedBox(height: 15.0,),
          TextField(
            controller: pvalue,
            decoration: InputDecoration(
                hintText: "Password"

            ),
              obscureText: true,
              onChanged: (value){
              setState(() {
                _pass=value;
              });
              },
          ),
          SizedBox(height: 15.0,),
          RaisedButton(
            onPressed: (){
            FirebaseAuth.instance.signInWithEmailAndPassword(email: _email, password: _pass)
                .then((user){
             Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
            }).catchError((e){print(e);});
          },
          child: Text("LogIn"),
            color: Colors.blueGrey,
          ),

          SizedBox(height: 15.0,),
          Text("Forget Password",textAlign: TextAlign.end,),
          SizedBox(height: 15.0,),
          RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingUp()),
                );
              },
            child: Text("Sing Up"),
            color: Colors.blueGrey,
          ),

        ],
        ),
      ),
    );
  }
  // ignore: must_call_super
  }
