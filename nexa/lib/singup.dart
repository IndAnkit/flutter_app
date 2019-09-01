import 'package:flutter/material.dart';
import 'package:nexa/LogIn.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:nexa/services/usermanagement.dart';

class SingUp extends StatefulWidget {
  @override
  _SingUpState createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  String _name,_email,_pass,_mobile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: Text("Nexa"),) ,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            Icon(Icons.account_circle, size: 80.0,),
            SizedBox(height: 15.0,),
            TextField(

              decoration: InputDecoration(
                  hintText: "Name"

              ),
              onChanged: (value){
                this._name=value;
              },
            ),
            SizedBox(height: 15.0,),
            TextField(

              decoration: InputDecoration(
                  hintText: "Mobile"

              ),
              onChanged: (value){
                this._mobile=value;
              },
            ),

            SizedBox(height: 15.0,),
            TextField(

              decoration: InputDecoration(
                  hintText: "Email"

              ),
              onChanged: (value){
               this. _email=value;
              },
            ),
            SizedBox(height: 15.0,),
            TextField(

              decoration: InputDecoration(
                  hintText: "Password"

              ),
              onChanged: (value){
                setState(() {
                  this._pass=value;
                });
              },
            ),
            SizedBox(height: 15.0,),
            RaisedButton(
              onPressed: (){

                FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: _email, password: _pass)
                    .then((user){
                      UserManageMent().storeNewUser(user, context);
                      AlertDialog(
                         actions: <Widget>[
                           Text("Done"),
                         ],
                      );

                })
                    .catchError((e){print(e);}

                );

              },


              child: Text("Sing Up"),
              color: Colors.blueGrey,
            ),

            SizedBox(height: 15.0,),
            Text("Forget Password",textAlign: TextAlign.end,),
            SizedBox(height: 15.0,),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
            },
              child: Text("logIn"),
              color: Colors.blueGrey,
            ),
          ],

        ),
      ),
    );
  }
}
