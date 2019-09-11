import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: MyApp(),
  
));

class MyApp extends StatelessWidget {
  Widget textSection=Container(
    child: Column(
      children: <Widget>[
        Text("Mahakal Jyotirling",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.red,fontWeight: FontWeight.bold,

        ),
        ),
        Text("*कालों के काल महाकाल के यहां प्रतिदिन अलसुबह भस्म आरती होती है। इस आरती की खासियत यह है कि इसमें ताजा मुर्दे की भस्म से भगवान महाकाल का श्रृंगार किया जाता है। इस आरती में शामिल होने के लिए पहले से बुकिंग की जाती है।",
          style: TextStyle(
            fontSize: 10.0,
            color: Colors.red,fontWeight: FontWeight.bold,

          ),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("Ujjain"),),
      body: ListView(
        children: <Widget>[
          Container(
          child: Image.network("https://i.ndtvimg.com/i/2016-07/mahakal-temple-ujjain_650x400_81469009922.jpg"),
            
          ),
          textSection,
        ],
        
      ),
    );
  }
}
