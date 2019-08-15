import 'package:flutter/material.dart';
import 'package:test_project/models/doctor_model.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_project/mdtunisia_home.dart';
import 'package:test_project/pages/search_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  var _textController = new TextEditingController();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return new Container( 
    color: const Color(0xff73aa97),
    child:  ListView.builder(
      
      itemCount: dummyData.length,
      itemBuilder: (context, i)=> new Column(
        children: <Widget>[
            new ExpansionTile(
              leading: new CircleAvatar(
                radius: 30.0,
                foregroundColor: Theme.of(context).primaryColor,
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(dummyData[i].imageUrl),
              ),
              title: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                   "Dr. "+dummyData[i].name,
                   style: new TextStyle(fontWeight: FontWeight.bold, color: new Color(0xffffffff)),
                   ),
                   SizedBox(height: 3),
                   new Text(
                   dummyData[i].speciality,
                   style: new TextStyle(color: new Color(0xff5b5b5b), fontSize: 15.0),
                   ),
                   SizedBox(height: 6),
                   FlutterRatingBar(
      initialRating: 3,
      fillColor: Colors.amber,
      borderColor: Colors.amber.withAlpha(200),
      allowHalfRating: true,
      itemSize: 20.0,
      onRatingUpdate: (rating) {
           print(rating);
      },
),
                ],
              ),
              children: <Widget>[
                new Container(
                  padding: new EdgeInsets.only(left: 8.0,top: 2.0,right: 8.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Column(
                        children: <Widget>[
                          new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                  new Text(
                    "Date ouverture : ",
                    style: new TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  new Text(
                    dummyData[i].opendate,
                    style: new TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                                ]
                              )
                            ],
                          ),
                          new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                new Text(
                    " Date fermeture : ",
                    style: new TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                  new Text(
                    dummyData[i].closedate,
                    style: new TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                                ]
                              )
                            ],
                          )
                        ],
                      ),
                      new Column(
                        children: <Widget>[
                          new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
                                      IconButton(
                  color: new Color(0xff5b8476),
                  icon: new Icon(FontAwesomeIcons.phoneAlt),
                  tooltip: 'Rendez-vous',
                  onPressed: () {
                  launch("tel://"+dummyData[i].tel);
                  },
                ),
                new Text("Rendez-vous",
                    style: new TextStyle(color: Colors.white, fontSize: 15.0),
                    ),

                                    ],
                                  ),
                  
                                ]
                              )
                            ],
                          ),
                          new Row(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Column(
                                    children: <Widget>[
            IconButton(
                  color: new Color(0xff5b8476),
                  icon: new Icon(FontAwesomeIcons.mapMarkedAlt),
                  tooltip: 'Emplacement',
                  onPressed: () {
                    var route = new MaterialPageRoute(
                      builder: (BuildContext context) => new SearchScreen(value: dummyData[i].address),
                    );
                    Navigator.of(context).push(route);
                  },
                  ),
                              new Text("Emplacement",
                    style: new TextStyle(color: Colors.white, fontSize: 15.0),
                    ),
                                    ],
                                  )
                                
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                    ]
                )
                )
                    ],
        
                )
              ],
            )
        
      ),
    
    );
  }
}