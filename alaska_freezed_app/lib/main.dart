import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:i_know_everything/screens/alaska_rivers_page.dart';
import 'package:latlong/latlong.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Check Norris Jokes',
      home: AlaskaRiversPage(),
    );
  }
}

class BaseMap extends StatelessWidget {
  final LatLng center;
  final Iterable<MarkerLayerOptions> markerLayerOptionsList;
  final List<PolygonLayerOptions> polygonLayerOptionsList;
  final List<PolylineLayerOptions> polylineLayerOptionsList;

  const BaseMap({
    Key key,
    @required this.center,
    this.markerLayerOptionsList,
    this.polygonLayerOptionsList,
    this.polylineLayerOptionsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final layers = <LayerOptions>[
      TileLayerOptions(
        urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
        subdomains: ['a', 'b', 'c'],
      ),
    ];

    if (markerLayerOptionsList != null) {
      layers.addAll(markerLayerOptionsList);
    }

    if (polygonLayerOptionsList != null) {
      layers.addAll(polygonLayerOptionsList);
    }

    if(polylineLayerOptionsList != null) {
      layers.addAll(polylineLayerOptionsList);
    }

    return Container(
      child: FlutterMap(
        options: MapOptions(
          center: this.center,
          zoom: 13.0,
        ),
        layers: layers,
      ),
    );
  }
}