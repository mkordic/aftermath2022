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
        body: FlutterMap(
          options: MapOptions(
            center: LatLng(46.09275740596388, 19.769983584718684)  ,
            minZoom: 0.0,
            maxZoom: 20.0,
            pinchZoomWinGestures: MultiFingerGesture.pinchZoom,

          ),
          children: [
            TileLayer(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a','b','c']
            ),
            MarkerLayer(
              markers: [
                Marker(
                  //resort
                    point: LatLng(46.09275740596388, 19.769983584718684),
                    builder: (context)=> Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.purple.shade400,
                        iconSize:45.0 ,
                        onPressed: (){
                          showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: Text('Studentsko odmaralište "Palić "'),
                                content: Text('Ovde smo smešteni'),
                                actions: [
                                  TextButton(
                                      onPressed: () => Navigator.pop(context),
                                      child: Text('Zatvori', style: TextStyle(color: Colors.deepPurple))
                                  )
                                ],
                              ),
                          );

                        },
                      ),
                    ),
                    width: 45.0,
                    height: 45.0
                ),
                Marker(
                  //terasa
                    point: LatLng(46.09380562416751, 19.76520974054218),
                    builder: (context)=> Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.purple.shade400,
                        iconSize:45.0 ,
                        onPressed: (){
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Terasa Muški štrand'),
                              content: Text('Ovo je predlog restorana gde možete otići na piće ili ručak sa pogledom na Palićko jezero.'),
                              actions: [
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('Zatvori', style: TextStyle(color: Colors.deepPurple))
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    width: 45.0,
                    height: 45.0
                ),
                Marker(
                  //zvonko bogdan winery
                    point: LatLng(46.09170806904042, 19.779331076705976),
                    builder: (context)=> Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color:Colors.purple.shade400,
                        iconSize:45.0 ,
                        onPressed: (){
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Vinarija Zvonko Bogdan'),
                              content: Text('Preporuka za sve ljubitelje vina je da posete ovu vinariju koja se nalazi na samo par minuta hoda od odmarališta.'),
                              actions: [
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('Zatvori', style: TextStyle(color: Colors.deepPurple))
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    width: 45.0,
                    height: 45.0
                ),
                Marker(
                  //zoo
                    point: LatLng(46.10028284209783, 19.752279913554144),
                    builder: (context)=> Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.purple.shade400,
                        iconSize:45.0 ,
                        onPressed: (){
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: Text('Zoo vrt Palić'),
                              content: Text('Zoološki vrt Palić je jedan od četiri zoološka vrta u Srbiji, a površina na kojoj se prostire iznosi 15 hektara, od kojih je 10 hektara kultivisanog parkovskog prostora, dostupnog posetiocima. '),
                              actions: [
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('Zatvori', style: TextStyle(color: Colors.deepPurple))
                                )
                              ],
                            ),
                          );
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

