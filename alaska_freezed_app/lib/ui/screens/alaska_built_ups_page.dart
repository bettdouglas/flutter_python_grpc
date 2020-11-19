import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:i_know_everything/logic/alaska_constants.dart';
import 'package:i_know_everything/logic/alaska_logic.dart';
import 'package:i_know_everything/ui/drawer.dart';
import 'package:i_know_everything/ui/widgets/base_map.dart';
import 'package:i_know_everything/ui/widgets/error_widget.dart';
import 'package:provider/provider.dart';
import 'package:i_know_everything/alaska_protos/index.dart';
import 'package:i_know_everything/extensions/index.dart';
import 'package:latlong/latlong.dart';

class AlaskaBuiltUpsPage extends StatelessWidget {

  static final String route = 'AlaskaBuiltUpsPage';


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(alaskaStub.getBuildUps(feature)),
      builder: (context, child) {
        final builtUpsProvider = context.watch<DataProvider<BuiltUps>>();
        return Scaffold(
          appBar: AppBar(
            title: Text('Alaska Builtup Regions'),
          ),
          drawer: buildDrawer(context, route),
          body: builtUpsProvider.dataState.map(
            initial: (_) => BaseMap(center: LatLng(-1.34, 56.9)),
            loading: (_) => LoadingMap(center: LatLng(-1.34, 56.9)),
            ready: (dataRady) {
              return BuiltUpsMapWidget(builtUps: dataRady.data.builtups);
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

class BuiltUpsMapWidget extends StatelessWidget {
  final List<BuiltUp> builtUps;

  const BuiltUpsMapWidget({Key key, this.builtUps}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseMap(
      center: builtUps.first.asPolygon.getCentroid().toLatLng(),
      polygonLayerOptionsList: [renderBuiltUps(builtUps)],
    );
  }

  PolygonLayerOptions renderBuiltUps(List<BuiltUp> builtUps) {
    var polygons = builtUps.map((e) => e.asPolygon).map(
          (e) => e.plot(
            borderColor: Colors.black,
            borderStrokeWidth: 1.1,
            color: Colors.amberAccent,
            disableHolesBorder: false,
            isDotted: false,
          ),
        );
    return PolygonLayerOptions(polygons: polygons.toList());
  }
}
