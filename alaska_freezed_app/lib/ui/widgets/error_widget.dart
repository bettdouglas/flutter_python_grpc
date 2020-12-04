import 'package:flutter/material.dart';
import 'package:i_know_everything/ui/widgets/base_map.dart';
import 'package:latlong/latlong.dart';
import 'package:sleek_button/sleek_button.dart';

class LoadingMap extends StatelessWidget {
  final LatLng center;
  const LoadingMap({Key key, this.center}) : super(key: key);

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

class ErrorMap<T> extends StatelessWidget {
  final String error;
  final Function retry;

  const ErrorMap({Key key, this.error, this.retry}) : super(key: key);

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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Error!!\n$error',
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    margin: const EdgeInsets.all(8.0),
                    child: SleekButton(
                      onTap: retry,
                      style: SleekButtonStyle.flat(
                        // borderWidth: 2,
                        color: Colors.amber,
                        context: context,
                        inverted: true,
                        rounded: true,
                        size: SleekButtonSize.normal,
                        textStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black)
                      ),
                      child: Text('Retry'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
