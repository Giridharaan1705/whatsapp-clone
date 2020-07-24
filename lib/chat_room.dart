import 'package:flutter/material.dart';
class Chatroom extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Color(0xFFECE5DD),
      appBar: AppBar(
        title:Row(
          children: <Widget>[
            CircleAvatar(
              radius: 12.0 ,
              child: Text("henry"),
              ),
              SizedBox(
                width: 8.0,),
                Text("I know u will only open this")
          ],),
           actions:<Widget>[],
      ),
    
     
          body:Column()
    );

  }
}