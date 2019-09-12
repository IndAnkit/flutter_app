import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primaryColor: Colors.red,

  ),
  home: MyApp(),
  title: "Frezy Chat",
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Frezy Chat",)),
      body: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

 final TextEditingController _messageController=TextEditingController();
 final List<ChatMessage> _message=<ChatMessage>[];

 void _handleSummit(String msg){
   _messageController.clear();
  ChatMessage message=new ChatMessage( msg:msg);
  setState(() {
    _message.insert(0, message);
  });
 }
  Widget _textComposerWidget(){
    return Container(
      alignment: Alignment.bottomCenter,
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Flexible(
            child: TextField(
              controller: _messageController,
              decoration: InputDecoration.collapsed(
                  hintText: "Enter Message"

              ),
              onSubmitted: _handleSummit,),
          ),
          IconButton(icon: Icon(Icons.send,color: Colors.red,), onPressed: (){
            _handleSummit(_messageController.text);
          })
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Flexible(
          child: ListView.builder(
            padding: EdgeInsets.all(6.0),
            itemBuilder: (context,int index)=>_message[index],
            itemCount: _message.length,
          ),
        ),
        Divider(height: 1.0,),
        Container(
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,

          ),
          child: _textComposerWidget(),
        )
      ],
    );
  }
}
//for chat message
const String _name="Ankit";
class ChatMessage extends StatelessWidget {
  final String msg;
  ChatMessage({this.msg});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: CircleAvatar(
              child: Text(_name[0]),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(_name,style:Theme.of(context).textTheme.subhead),
              Container(child: Text(msg)),
            ],
          )
        ],
      ),
    );
  }
}


