import 'package:flutter/material.dart';
import 'package:i_know_everything/ui/widgets/base_map.dart';
import 'package:latlong/latlong.dart';

class LoadingMap extends StatelessWidget {
  final LatLng center;
  const LoadingMap({Key key,this.center}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BaseMap(
          center: center ?? LatLng(-1.3, 35.0),
          key: key,
        ),
        Align(
          alignment: Alignment.center,
          child: CircularProgressIndicator(),
        )
      ],
    );
  }
}

class ErrorMap extends StatelessWidget {
  final String error;

  const ErrorMap({Key key, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BaseMap(
          center: LatLng(-1.3, 35.0),
          key: key,
        ),
        Align(
          alignment: Alignment.center,
          child: Card(
            child: Text('Error loading rivers data.\n$error'),
          ),
        )
      ],
    );
  }
}