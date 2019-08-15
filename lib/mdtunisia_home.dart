import 'package:flutter/material.dart';

import 'pages/doctors_screen.dart';
import 'pages/home_screen.dart';
import 'pages/profile_screen.dart';
import 'pages/search_screen.dart';
import 'pages/chatbot_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MDTunisiaHome extends StatefulWidget {
  @override
  _MDTunisiaHomeState createState() => _MDTunisiaHomeState();
}

class _MDTunisiaHomeState extends State<MDTunisiaHome>
 with SingleTickerProviderStateMixin{

   TabController _tabController;
   

   @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1,length: 5);
    
  }

  

void clicked(BuildContext context, menu) {
    final scaffold = Scaffold.of(context);
    scaffold.showSnackBar(
      SnackBar(
        content: Text(menu),
        action: SnackBarAction(
            label: 'UNDO',
            onPressed: scaffold.hideCurrentSnackBar),
      ),
    );
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("MD Tunisia", style: TextStyle(fontFamily: 'Lucida Calligraphy',fontSize: 25.0,fontWeight: FontWeight.bold)),
        
        elevation: 0.7,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              clicked(context, "settings pressed");
            },
          ),
        ],
      ),
      bottomNavigationBar: new BottomAppBar(
        color: new Color(0xff5b8476),
        elevation: 0.7,
        child: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(FontAwesomeIcons.home)),
            new Tab(icon: new Icon(FontAwesomeIcons.stethoscope)),
            new Tab(icon: new Icon(FontAwesomeIcons.userMd),),
            new Tab(icon: new Icon(FontAwesomeIcons.search),),
            new Tab(icon: new Icon(FontAwesomeIcons.user))
          ],
        ),
      ),

      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new HomeScreen(),
          new DoctorsScreen(),
          new ChatBotScreen(),
          new SearchScreen(),
          new ProfileScreen(),
        ],
      ),
    );
  }
}