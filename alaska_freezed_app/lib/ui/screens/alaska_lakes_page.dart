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

class AlaskaLakesPage extends StatelessWidget {

  static final String route = 'AlaskaLakesPage';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(alaskaStub.getLakes(feature)),
      builder: (context, child) {
        final builtUpsProvider = context.watch<DataProvider<Lakes>>();
        return Scaffold(
          appBar: AppBar(
            title: Text('Alaska Lakes Lakes'),
          ),
          drawer: buildDrawer(context, route),
          body: builtUpsProvider.dataState.map(
            initial: (_) => BaseMap(center: LatLng(-1.34, 56.9)),
            loading: (_) => LoadingMap(center: LatLng(-1.34, 56.9)),
            ready: (dataRady) {
              return LakesMapWidget(lakes: dataRady.data.lakes);
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

class LakesMapWidget extends StatelessWidget {
  final List<Lake> lakes;

  const LakesMapWidget({Key key, this.lakes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseMap(
      center: lakes.first.asPolygon.getCentroid().toLatLng(),
      polygonLayerOptionsList: [renderRegions(lakes)],
    );
  }

  PolygonLayerOptions renderRegions(List<Lake> lakes) {
    var polygons = lakes.map((e) => e.asPolygon).map(
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
