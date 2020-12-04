import 'dart:math';

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
import 'package:color_palette_generator/color_palette_generator.dart';

class AlaskaPipelinesPage extends StatelessWidget {
  static final String route = 'AlaskaPipelinesPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pipelines in Alaska'),
      ),
      body: ChangeNotifierProvider(
        create: (context) => DataProvider(alaskaStub.getPipelines(feature)),
        builder: (context, child) {
          final dataProvider = context.watch<DataProvider<Pipelines>>();

          return dataProvider.dataState.map(
            initial: (_) => BaseMap(
              center: LatLng(-1.3, 35.0),
            ),
            loading: (_) => LoadingMap(
              center: LatLng(-1.3, 35.0),
            ),
            ready: (dataReady) {
              return PipelinesMap(
                pipelines: dataReady.data.pipelines,
              );
            },
            error: (error) => ErrorMap(
              error: error.toString(),
            ),
          );
        },
      ),
    );
  }
}

class PipelinesMap extends StatelessWidget {
  final List<Pipeline> pipelines;

  PipelinesMap({Key key, this.pipelines}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final basicPallete = ColorPalette.from(
      ['#ff0033', '#990000', '#ffcccc', '#ff9999', '#33ff00'],
    );
    final colors = basicPallete.generatePalette(Random().nextInt(100));
    List.generate(100, (index) {
      final colors =
          ColorPalette.from(['#ff0000', '#00ff00', 'rgba(0,0,255, 0.50)'])
              .generatePalette(index);
      print('Index($index - Length ${colors.length}');
    });

    return BaseMap(
      center: pipelines.first.asLineString.getCentroid().toLatLng(),
      polylineLayerOptionsList: [
        PolylineLayerOptions(
          polylines: pipelines
              .asMap()
              // .map((key, value) => MapEntry(colors[key], value))
              .entries
              .map(
            (e) {
              // var color = e.key;
              return renderPipeLine(
                e.value,
                htmlColor: colors[5],
              );
            },
          ).toList(),
        )
      ],
    );
  }

  Polyline renderPipeLine(Pipeline pipeline, {HTMLColor htmlColor}) {
    return Polyline(
      borderColor: Colors.amber,
      borderStrokeWidth: 1.2,
      color: Colors.brown,
      points: pipeline.asLineString.toLatLng(),
      strokeWidth: 2,
    );
  }
}
