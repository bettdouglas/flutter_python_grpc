import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:i_know_everything/logic/alaska_constants.dart';
import 'package:i_know_everything/logic/alaska_logic.dart';
import 'package:i_know_everything/ui/widgets/base_map.dart';
import 'package:i_know_everything/ui/widgets/error_widget.dart';
import 'package:provider/provider.dart';
import 'package:i_know_everything/alaska_protos/index.dart';
import 'package:i_know_everything/extensions/index.dart';
import 'package:latlong/latlong.dart';

class AlaskaTreesPage extends StatelessWidget {
  static final String route = 'AlaskaTreesPage';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trees in Alaska'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => DataProvider(alaskaStub.getTrees(feature)),
        builder: (context, child) {
          final dataState = context
              .select((DataProvider<Trees> provider) => provider.dataState);

          return dataState.map(
            initial: (_) => BaseMap(
              center: LatLng(-1.3, 35.0),
            ),
            loading: (_) => LoadingMap(
              center: LatLng(-1.3, 35.0),
            ),
            ready: (dataReady) {
              return TreesMap(
                trees: dataReady.data.trees,
              );
            },
            error: (error) {
              return ErrorMap(
                error: error.toString(),
              );
            },
          );
        },
      ),
    );
  }
}

class TreesMap extends StatelessWidget {
  final List<Tree> trees;

  const TreesMap({Key key, this.trees}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseMap(
      center: trees.first.asPolygon.getCentroid().toLatLng(),
      polygonLayerOptionsList: [],
    );
  }

  PolygonLayerOptions renderTrees(List<Tree> trees) {
    return PolygonLayerOptions(
      polygons: trees.map(
        (e) {
          return e.asPolygon.plot(
            color: Colors.lightGreen,
            borderColor: Colors.black26,
            borderStrokeWidth: 0.6,
            disableHolesBorder: false,
            isDotted: false,
          );
        },
      ),
    );
  }
}
