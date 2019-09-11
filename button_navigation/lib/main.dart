import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Home(),
));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Navigation Button"),),
      body: ListView(
        children: <Widget>[
          dispLayButton,
          Divider(),
        ],
      ),
    );
  }

 Widget dispLayButton=Container(
   child:Row(
     mainAxisAlignment: MainAxisAlignment.spaceBetween,
     children: <Widget>[
       InkWell(child: buildButton(Icons.call,"Call"),
       onTap: (){},
       ),
       InkWell(onTap: (){},
           child: buildButton(Icons.mail, "Mail")),
       InkWell(
           onTap: (){},
           child: buildButton(Icons.chat,"Chat")),

       InkWell(onTap: (){},
           child: buildButton(Icons.mail, "Mail")),
     ],
   ),
 );
}

Column buildButton(IconData icon,String name) {
  return Column(


    children: <Widget>[
      Icon(icon),
      Text(name)
    ],
  );
}
