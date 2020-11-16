import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:i_know_everything/logic/logic.dart';
import 'package:i_know_everything/screens/alaska_rivers_page.dart';
import 'package:provider/provider.dart';
import 'package:latlong/latlong.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Check Norris Jokes',
        home: AlaskaRiversPage(),
      ),
    );
  }
}

class CheckNorrisJokePage extends StatelessWidget {
  const CheckNorrisJokePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appProvider = context.watch<AppProvider>();
    return Scaffold(
      appBar: AppBar(
        title: Text('Dedicated to Chuck Norris. Our childhood hero'),
        elevation: 0,
      ),
      body: appProvider.state.map(
        initial: (_) => Error404(
          message: 'Initial',
        ),
        loading: (_) => Error404(
          message: 'Loading',
        ),
        ready: (appready) => ChangeNotifierProvider(
          create: (context) =>
              ChuckProvider(appready.categories, appready.joke),
          builder: (context, child) {
            return BaseMap(
              center: LatLng(51.5, -0.09),
            );
          },
        ),
        error: (error) => Error404(
          message: error.message,
        ),
      ),
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

class Error404 extends StatelessWidget {
  final String message;

  const Error404({Key key, this.message}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/chuck_chest_jump.gif'),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Error 404'),
              Text('Chuck Norris doesn\'t want you to see this page.')
            ],
          )
        ],
      ),
    );
  }
}
