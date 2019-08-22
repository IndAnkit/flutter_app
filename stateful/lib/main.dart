import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() => runApp(
 MaterialApp(
   title: "Statefull Widgets",
  home:MyApp()
  )
  
  );

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  
   @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _favoratecity();
      }
    }
    
    class _favoratecity extends State<MyApp> {
      String name="";
      var _country =["India","Usa","Nepal","Bhutan"];
  var _newValue="India";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  
        return Scaffold(
          appBar: AppBar(title: Text("StateFull Widgets"),),
          body: Container(
            child:Column(
              children: <Widget>[
               TextField(
                 onChanged:(String username){
                   setState(() {
                     name=username;
                   });
                   },
                 ),
                 
       DropdownButton<String>(
         items: _country.map((String dropDownItem){
         return DropdownMenuItem<String>(
         value: dropDownItem,
        child:Text(dropDownItem)
         );

  }).toList(),
  onChanged: (String newValueSelected){
    setState(() {
    this._newValue=newValueSelected;
    });
    },
  value:_newValue,
),

            Padding(
              padding:EdgeInsets.all(40.0),
           child:Text("Your city is $name",
          style:TextStyle(fontSize: 40.0),
           
           ),
            )  
          ],),
           ),
          );
  
  }
}