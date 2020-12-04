import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

enum BaseTile { OSM, MB_DARK, MB_LIGHT, STAMEN }

class BaseMap extends StatelessWidget {
  final LatLng center;
  final List<MarkerLayerOptions> markerLayerOptionsList;
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
        tileProvider: CachedNetworkTileProvider(),
      ),
    ];

    if (markerLayerOptionsList != null) {
      layers.addAll(markerLayerOptionsList);
    }

    if (polygonLayerOptionsList != null) {
      layers.addAll(polygonLayerOptionsList);
    }

    if (polylineLayerOptionsList != null) {
      layers.addAll(polylineLayerOptionsList);
    }

    return Container(
      child: FlutterMap(
        options: MapOptions(
          center: this.center,
          zoom: 2.0,
          onTap: (point) {
            print(point);
          },
        ),
        layers: layers,
      ),
    );
  }
}
