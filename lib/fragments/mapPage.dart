import 'package:flutter/material.dart';
import '../navigationDrawer/navigationDrawer.dart';
import'package:flutter_map/flutter_map.dart';
import'package:latlong2/latlong.dart';

class mapPage extends StatelessWidget {
  static const String routeName = '/mapPage';

  const mapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mapa Palića"),
          backgroundColor: Colors.purple,
        ),
        drawer: navigationDrawer(),
        body: new FlutterMap(
          options: new MapOptions(
            center: new LatLng(46.0499998 ,19.749997)  ,
            minZoom: 0.0,
            maxZoom: 15.0,
            pinchZoomWinGestures: MultiFingerGesture.pinchZoom,

          ),
          children: [
            new TileLayer(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a','b','c']
            ),
            new MarkerLayer(
              markers: [
                new Marker(
                  point: new LatLng(46.0499998 ,19.749997),
                  builder: (context)=> new Container(
                    child: IconButton(
                      icon: Icon(Icons.location_on),
                      color: Colors.deepPurpleAccent,
                      iconSize:45.0 ,
                      onPressed: (){
                        print('Marker tapped');
                      },
                    ),
                  ),
                  width: 45.0,
                  height: 45.0
                )
            ],
            )
          ]
        ));
        //const Center(child: Text("This is map page")));
  }
}