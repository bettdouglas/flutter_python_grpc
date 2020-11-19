import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:i_know_everything/logic/alaska_constants.dart';
import 'package:i_know_everything/logic/alaska_logic.dart';
import 'package:i_know_everything/ui/drawer.dart';
import 'package:i_know_everything/ui/widgets/base_map.dart';
import 'package:i_know_everything/ui/widgets/error_widget.dart';
import 'package:provider/provider.dart';
import 'package:latlong/latlong.dart';
import 'package:i_know_everything/alaska_protos/index.dart';
import 'package:i_know_everything/extensions/index.dart';

class AlaskaRiversPage extends StatelessWidget {

  static final String route = 'AlaskaRiversPage';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(alaskaStub.getRivers(feature)),
      builder: (context, child) {
        final riversProv = context.watch<DataProvider<Rivers>>();
        return Scaffold(
          appBar: AppBar(
            title: Text('Rivers in Alaska'),
          ),
          drawer: buildDrawer(context, route),
          body: riversProv.dataState.map(
            initial: (_) => BaseMap(
              center: LatLng(-1.3, 35.0),
            ),
            loading: (_) => LoadingMap(
                ),
            ready: (ready) {
              return RiversMap(rivers: ready.data);
            },
            error: (error) {
              return ErrorMap(
                error: error.message,
              );
            },
          ),
        );
      },
    );
  }
}

class RiversMap extends StatelessWidget {
  final Rivers rivers;

  const RiversMap({Key key, this.rivers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BaseMap(
        center: rivers.rivers.first.asLineString.getCentroid().toLatLng(),
        polylineLayerOptionsList: renderRivers(rivers.rivers),
        key: key,
      ),
    );
  }

  List<PolylineLayerOptions> renderRivers(List<River> rivers) {
    return [
      PolylineLayerOptions(
        polylines: rivers.map(
          (e) => e.asLineString.plot(
            borderColor: Colors.black,
            color: Colors.amber,
            strokeWidth: 1.5,
            borderStrokeWidth: 1.5,
            isDotted: false,
            colorsStop: null,
            gradientColors: null,
          ),
        ).toList(),
      )
    ];
  }
}
