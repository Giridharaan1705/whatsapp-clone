import 'dart:async';
import'package:flutter/material.dart';
import 'package:whatsapp/whatsapp_home.dart';
class SplashScreen extends StatefulWidget{
  _SplashScreenState createState()
   =>new _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen>{
  @override
   void initState(){
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => WhatsAppHome(),) 
    );
    });
  }
 
  
  Widget build(BuildContext context){
  return Scaffold(
    body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(color:Colors.white)

        ),
        Column(
           mainAxisAlignment: MainAxisAlignment.start,
           children: <Widget>[
             Expanded(
               flex:2,
               child: Container(
                 child:Column(mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Image(image: AssetImage( "images/logo.jpeg"),height: 150,width: 200,),


                 ],
                 )
               ),
             ),
             Expanded(
               flex: 1,
               child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Padding(
                  padding:EdgeInsets.only(top:20.0)
                          ),
                  Text("From  Giridharaan",style: TextStyle(color:Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold)      )  ],
               )
             )
           ],
        )
      ],
    ),
  );
  }
}