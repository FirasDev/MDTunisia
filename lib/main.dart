import 'package:flutter/material.dart';

import 'mdtunisia_home.dart';

void main()=> runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "MDTunisia",
      theme: new ThemeData(
        
        primaryColor: new Color(0xff5b8476),
        accentColor: new Color(0xff5b8476),

      ),
      debugShowCheckedModeBanner: false,
      home : new MDTunisiaHome(),
    );
  }
}