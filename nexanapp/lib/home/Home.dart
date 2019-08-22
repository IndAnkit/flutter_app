import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      child: Column(children: <Widget>[
        Images(),
        Row(children: <Widget>[
              Text("hello world  ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.redAccent,
                  fontSize: 20.0,
                  decoration: TextDecoration.none
                  ),
                  textAlign: TextAlign.center,
                  ),

                Text("hello world",
                  textDirection: TextDirection.ltr,
                  
                  style: TextStyle(color: Colors.redAccent,
                  fontSize: 20.0,
                  decoration: TextDecoration.none
                  ),
                  textAlign: TextAlign.center,
                  
                ),

        ],),

        Row(children: <Widget>[
              Text("hello world  ",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(color: Colors.redAccent,
                  fontSize: 20.0,
                  decoration: TextDecoration.none
                  ),
                  textAlign: TextAlign.center,
                  ),

                Text("hello world",
                  textDirection: TextDirection.ltr,
                  
                  style: TextStyle(color: Colors.redAccent,
                  fontSize: 20.0,
                  decoration: TextDecoration.none
                  ),
                  textAlign: TextAlign.center,
                  
                )

        ],),

        Button()
        

      ],),
        
         
      );
  

  
  }


}
class Images extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage=AssetImage('images/logo.png');
    Image image=Image(image:assetImage, width:100.0,height: 100.0);
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.all(0.0),
      child: image,
      //chiid:Text("hello"),
    );
  }
}
class Button extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

    child: RaisedButton(
      color: Colors.yellowAccent,
      child: Text("Click Me",
      ),
      onPressed: (){
        book(context);

    },) 


    );
  }
  book(BuildContext context){
    var alertDialog=AlertDialog(
      title: Text("Clicked Successfully"),
      content: Text("Have a nice day"),

    );
    showDialog(
      context: context ,
       builder: (BuildContext context){
     return alertDialog;
    }
    );
  }

}