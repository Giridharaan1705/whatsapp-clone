import 'package:flutter/material.dart';
import 'package:whatsapp/status_screen.dart';

import 'call_screen.dart';
import 'camera_screen.dart';
import 'chat_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override 
  _WhatsAppHomeState createState() =>new _WhatsAppHomeState();
  

}
class _WhatsAppHomeState extends State<WhatsAppHome>
  with  SingleTickerProviderStateMixin {
    TabController _tabController;

    
    @override
    void initState(){
      super.initState();
      _tabController=new TabController(length:4, vsync: this ,initialIndex:1);
    }
    @override
    Widget build(BuildContext context){
      return new Scaffold (
        appBar:new AppBar(
        title:new Text("WhatsApp") ,
        elevation: 0.7,
        bottom:new TabBar(
          controller:_tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS")
          ],
        ),
        actions: <Widget>[new Icon(Icons.search),new Icon(Icons.more_vert)],
        ),
        body:new TabBarView(
           controller:_tabController,
           children:<Widget>[
                      new CameraScreen(),
                      new ChatScreen(),
                      new StatusScreen(),
                      new CallsScreen(),
                      ],
                   ),
                   floatingActionButton: new FloatingActionButton(
                     backgroundColor: Theme.of(context).primaryColor,
                     child: Icon(Icons.message,color: Colors.white),
                     onPressed:()=>print("open chats") 
                     ),
                 );
               }
            }
      
