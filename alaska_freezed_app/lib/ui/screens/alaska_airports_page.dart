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

class AlaskaAirportsPage extends StatelessWidget {
  static final String route = 'AlaskaAirportsPage';


  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DataProvider(alaskaStub.getAirports(feature)),
      builder: (context, child) {
        final airportsProvider = context.watch<DataProvider<Airports>>();
        return Scaffold(
          appBar: AppBar(
            title: Text('Airports in Alaska'),
          ),
          drawer: buildDrawer(context, route),
          body: airportsProvider.dataState.map(
            initial: (_) => BaseMap(
              center: LatLng(-1.3, 35.0),
            ),
            loading: (_) => LoadingMap(),
            ready: (dataReady) {
              return AirportsMap(
                airports: dataReady.data.airports,
              );
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

class AirportsMap extends StatelessWidget {
  final List<Airport> airports;

  const AirportsMap({Key key, this.airports}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseMap(
      center: airports.first.asPoint.toLatLng(),
      markerLayerOptionsList: [renderAirports(airports)],
    );
  }

  MarkerLayerOptions renderAirports(List<Airport> airports) {
    return MarkerLayerOptions(
      markers: airports.map(
        (e) {
          return e.asPoint.plot(
            builder: (context) => IconButton(
              onPressed: () {
                print(e);
                showBottomSheet(
                  context: context,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
                  builder: (context) {
                    return Container(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: AirportInfoWidget(airport: e,),
                    );
                  },
                );
              },
              icon: Icon(
                Icons.local_airport,
                color: Colors.black,
              )
                  // .card(
                  //   elevation: 10,
                  //   shape: RoundedRectangleBorder(
                  //     borderRadius: BorderRadius.circular(20),
                  //   ),
                  // )
                  // .alignment(Alignment.center)
                  // .backgroundColor(
                  //   Color(0xffEBECF1),
                  // ),
            ),
            height: 50,
            width: 50,
          );
        },
      ).toList(),
    );
  }
}

class AirportInfoWidget extends StatelessWidget {
  final Airport airport;

  const AirportInfoWidget({Key key, this.airport}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(airport.name),
        // .bold().fontSize(19).textAlignment(TextAlign.start).padding(bottom: 10),
        // Text('ELEVATION')
        Text.rich(
          TextSpan(text: 'ELEVATION: ',children: [
            TextSpan(
              text: '${airport.elevation}'
            )
          ]),
        ),
          // textColor(Colors.green).fontWeight(FontWeight.w700),
      ],
    );
  }
}
