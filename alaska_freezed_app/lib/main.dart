import 'package:flutter/material.dart';
import 'package:i_know_everything/ui/screens/alaska_airports_page.dart';
import 'package:i_know_everything/ui/screens/alaska_built_ups_page.dart';
import 'package:i_know_everything/ui/screens/alaska_lakes_page.dart';
import 'package:i_know_everything/ui/screens/alaska_regions_page.dart';
import 'package:i_know_everything/ui/screens/alaska_rivers_page.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GEOS Serialization/Deserialization Examples',
      home: AlaskaAirportsPage(),
      routes: {
        AlaskaRiversPage.route: (_) => AlaskaRiversPage(),
        AlaskaAirportsPage.route: (_) => AlaskaAirportsPage(),
        AlaskaBuiltUpsPage.route: (_) => AlaskaBuiltUpsPage(),
        AlaskaLakesPage.route: (_) => AlaskaLakesPage(),
        AlaskaRegionsPage.route: (_) => AlaskaRegionsPage(),
      },
    );
  }
}