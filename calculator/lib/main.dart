import 'dart:ui' as prefix0;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/framework.dart';

void main(){
  runApp(
   MaterialApp(
     debugShowCheckedModeBanner: false,
     title: "Simple Interest Calculator",
   home: Home(),
   theme: ThemeData(
     brightness:Brightness.dark,
     primaryColor: Colors.indigo,
     accentColor: Colors.indigoAccent
   ),
   )
  );

}
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeState();
      }
    
    }
    
    class _HomeState extends State<Home>{
      var _newVal="Rupees";
      var _note=['Rupees','Dollors','unani'];
      String _displayResult='';
      var _formkey=GlobalKey<FormState>();
      TextEditingController principleController=TextEditingController();
      TextEditingController roiController=TextEditingController();
      TextEditingController termController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     TextStyle textStyle=Theme.of(context).textTheme.title;
    
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      appBar: AppBar(title:Text("simple calculator") ,),
      body: Form(
        key: _formkey,
        child:Padding( 
       padding: EdgeInsets.all(10.0),
        
        child:ListView(
        children: <Widget>[
          images(),
         Padding(
           padding:EdgeInsets.all(7.0),
           child: TextFormField(
            keyboardType: TextInputType.number,
            style: textStyle,
           
            controller: principleController,
            validator: (String value){
              if(value.isEmpty){
                return "please enter amount";
              }
            },
            decoration: InputDecoration(
              labelText: "Principle",
              hintText: "enter principle amount eg. 2000",
              labelStyle: textStyle,
              errorStyle: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 15.0,
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0) )
            
            ),
          ),
          ),

          Padding(padding:EdgeInsets.all(7.0) ,
          child:TextFormField(
            keyboardType: TextInputType.number,
            style: textStyle,
            controller: roiController,
            validator: (String value){
              if(value.isEmpty){
                return "Please enter valid amount";
              }
            },
            decoration: InputDecoration(
              labelText: "Rate Of Interest",
              hintText: "Rate",
              labelStyle: textStyle,
              errorStyle: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 15.0,
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0) )
            
            ),
          )
          ),
          
          Padding(
            padding:EdgeInsets.all(10.0),
          child:Row(
            children: <Widget>[

           Expanded(
             child:TextFormField(
            keyboardType: TextInputType.number,
            style: textStyle,
            validator: (String value){
              if(value.isEmpty){
                return "Please enter valid amount";
              }
            },
            controller: termController,
            decoration: InputDecoration(
              labelText: "Term",
              hintText: "Time in Year",
              labelStyle: textStyle,
              errorStyle: TextStyle(
                color: Colors.yellowAccent,
                fontSize: 15.0,
              ),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.0) )
            ),
          ),),
           
           Container(width: 10.0,),

          Expanded(
            
            child: DropdownButton<String>(
            
            items: _note.map((String values){
            return DropdownMenuItem<String>(
              value:values,
              child:Text(values)

              
            );
            }
            ).toList(), 
            
            onChanged: (String netValue) {
              setState(() {
              this._newVal=netValue;
              });
            },
            value: _newVal,
          ),),
           ],
          ),),

          Padding(padding: EdgeInsets.all(5.0),
          child: Row(
            children: <Widget>[
             Expanded(
               child: RaisedButton(
                 color: Colors.amberAccent,
               child: Text("Calculate",style: textStyle,),
               onPressed: (){
                 setState(() {
                   if(_formkey.currentState.validate()){
                  String name=_calculateTotalReturn(); 
                   }
                 });

               },
              ),),

             Expanded(
               child: RaisedButton(
                 color: Colors.amber,
               child: Text("Reset",style: textStyle,),
               onPressed: (){
                 setState(() {
                   
                  reset(); 
                  
                 });
                 
               },
              ),)
            ],
          ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: 
         Text(this._displayResult),
          ),
          
        ],
      )
      )


      ),
      );
  }
   
   Widget images(){
     AssetImage assetImage=AssetImage("images/logo.png");
     Image image=Image(image:assetImage,width: 100.0,height:100.0,);
     return Container(
       alignment: Alignment.center,
       child: image);
   }

  String _calculateTotalReturn() {
   double principal=double.parse(principleController.text);
   double roi=double.parse(roiController.text);
   double term=double.parse(termController.text);

   double totalAmount=principal+(principal*roi*term)/100;
    
    this._displayResult= "After $term years ,your investment will be worth $totalAmount $_newVal";
   return this._displayResult;
  }
  void reset(){
    principleController.text='';
    roiController.text='';
    termController.text='';
    _newVal=_note[0];
    _displayResult='';
  }
}