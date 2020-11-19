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

class AlaskaRegionsPage extends StatelessWidget {

  static final String route = 'AlaskaRegionsPage';


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(alaskaStub.getRegions(feature)),
      builder: (context, child) {
        final builtUpsProvider = context.watch<DataProvider<Regions>>();
        return Scaffold(
          appBar: AppBar(
            title: Text('Alaska Regions Regions'),
          ),
          drawer: buildDrawer(context, route),
          body: builtUpsProvider.dataState.map(
            initial: (_) => BaseMap(center: LatLng(-1.34, 56.9)),
            loading: (_) => LoadingMap(center: LatLng(-1.34, 56.9)),
            ready: (dataRady) {
              return RegionsMapWidget(regions: dataRady.data.regions);
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

class RegionsMapWidget extends StatelessWidget {
  final List<Region> regions;

  const RegionsMapWidget({Key key, this.regions}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseMap(
      center: regions.first.asMultiPolygon.getCentroid().toLatLng(),
      polygonLayerOptionsList: renderRegions(regions),
    );
  }

  List<PolygonLayerOptions> renderRegions(List<Region> regions) {
    var polygons = regions.map((e) => e.asMultiPolygon).map(
          (e) => e.plot(
            borderColor: Colors.black,
            borderStrokeWidth: 1.1,
            color: Colors.amberAccent,
            disableHolesBorder: false,
            isDotted: false,
          ),
        );
    return polygons.map((e) => PolygonLayerOptions(polygons: e)).toList();
  }
}
