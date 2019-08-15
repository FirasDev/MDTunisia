import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';


class SearchScreen extends StatefulWidget {

  final String value;
  SearchScreen({this.value});

  @override
  _SearchScreenState createState() => _SearchScreenState();

  addmarker(String query) async {
    var addresses = await Geocoder.local.findAddressesFromQuery(query);
    var first = addresses.first;
    print("${first.featureName} : ${first.coordinates}");
  }
}


class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
      final adr = "${widget.value}";
    
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: new Icon(Icons.gps_fixed ), onPressed: () async {
            Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
            print(position);

          }
        ),
        title: Text("Rechercher des docteurs"),
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.search), onPressed: () {
            

          },)
        ],
      ),
      body: new FlutterMap(
                options: new MapOptions(
                  center: new LatLng(36.80, 10.18),
                  zoom: 14.0,
                ),
                layers: [
                  new TileLayerOptions(
                    urlTemplate: "https://api.tiles.mapbox.com/v4/"
                        "{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}",
                    additionalOptions: {
                      'accessToken':
                          'sk.eyJ1IjoiZmlyYXNkZXYiLCJhIjoiY2p5dnMydHkzMHFtZzNsbjRiZTgzZnV4NyJ9.W8stDa4RRWJOxCVi_0WR9Q',
                      'id': 'mapbox.streets',
                    },
                  ),
                
                  new MarkerLayerOptions(
                    markers: [
                      new Marker(
                        width: 80.0,
                        height: 80.0,
                        point: new LatLng(36.80, 10.18),
                        builder: (ctx) => 
                          Container(
                            child: IconButton(
                              icon: new Icon(FontAwesomeIcons.mapMarkerAlt),
                              color: new Color(0xffFF0000),
                              iconSize: 55.0,
                              onPressed: (){
                                showModalBottomSheet(
                                  context: context,
                                  builder: (Builder){
                                    return Container(
                                      color: Colors.white,
                                      child: new Center(
                                        child: new Text("Médecins à proximité:"),
                                      ),
                                    );
                                  });

                              },
                            ),
                          ),
                      ),
                    ],
                  ),
                ],
              ),
    );

    
  }
}
