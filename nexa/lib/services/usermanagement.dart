import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../Home.dart';

class UserManageMent{
  
  storeNewUser(user,context){
    Firestore.instance.collection('/users').add({})
        .then((value){
          Navigator.of(context).pop();
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
    })
        .catchError((e){
      print(e);
    });
  }
}