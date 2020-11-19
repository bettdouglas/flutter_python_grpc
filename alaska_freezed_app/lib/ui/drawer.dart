import 'package:flutter/material.dart';
import 'package:i_know_everything/ui/screens/alaska_airports_page.dart';
import 'package:i_know_everything/ui/screens/alaska_built_ups_page.dart';
import 'package:i_know_everything/ui/screens/alaska_lakes_page.dart';
import 'package:i_know_everything/ui/screens/alaska_regions_page.dart';
import 'package:i_know_everything/ui/screens/alaska_rivers_page.dart';

Widget _buildMenuItem(
  BuildContext context,
  Widget title,
  String routeName,
  String currentRoute,
) {
  var isSelected = routeName == currentRoute;

  return ListTile(
    title: title,
    selected: isSelected,
    onTap: () {
      if (isSelected) {
        Navigator.pop(context);
      } else {
        Navigator.pushReplacementNamed(context, routeName);
      }
    },
  );
}

Drawer buildDrawer(BuildContext context, String currentRoute) {
  return Drawer(
    child: ListView(
      children: [
        const DrawerHeader(
          child: Center(
            child: Text('GRPC-Shapely-JTS to Dart examples'),
          ),
        ),
        _buildMenuItem(
          context,
          const Text('Alaska Rivers'),
          AlaskaRiversPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Alaska Airports'),
          AlaskaAirportsPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Alaska Built Ups'),
          AlaskaBuiltUpsPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Alaska Lakes'),
          AlaskaLakesPage.route,
          currentRoute,
        ),
        _buildMenuItem(
          context,
          const Text('Alaska Regions'),
          AlaskaRegionsPage.route,
          currentRoute,
        ),
      ],
    ),
  );
}
