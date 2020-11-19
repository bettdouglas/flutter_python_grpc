import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:dart_jts/dart_jts.dart' as jts;
import 'package:latlong/latlong.dart';

extension ToLatLng on jts.Coordinate {
  LatLng toLatLng() => LatLng(this.y, this.x);
}

extension GeneralGeomExtensions on jts.Geometry {
  LatLngBounds getBounds() {
    final envelope = getEnvelopeInternal();

    return LatLngBounds(
      LatLng(envelope.getMaxY(), envelope.getMaxX()),
      LatLng(envelope.getMinY(), envelope.getMinX()),
    );
  }
}

extension LineStringToLatLng on jts.LineString {
  List<LatLng> toLatLng() =>
      this.getCoordinates().map((e) => e.toLatLng()).toList();
}

extension PointPlotExtension on jts.Point {
  Marker plot({
    @required WidgetBuilder builder,
    double height,
    double width,
    AnchorPos<dynamic> anchorPos,
  }) {
    return Marker(
      point: LatLng(this.getY(), this.getX()),
      builder: builder,
      height: height,
      width: width,
    );
  }

  LatLng toLatLng() => LatLng(getY(), getX());
}

extension MultiPointPlotExtension on jts.MultiPoint {
  List<Marker> plot({
    @required WidgetBuilder builder,
    double height,
    double width,
    AnchorPos<dynamic> anchorPos,
  }) {
    return List.generate(
      getNumPoints(),
      (index) => (this.getGeometryN(index) as jts.Point).plot(
        builder: builder,
        height: height,
        width: width,
        anchorPos: anchorPos,
      ),
    );
  }
}

extension PolygonPlotExtension on jts.Polygon {
  Polygon plot({
    Color borderColor,
    Color color,
    double borderStrokeWidth,
    bool isDotted,
    bool disableHolesBorder,
  }) {
    return Polygon(
      color: color,
      borderColor: borderColor,
      borderStrokeWidth: borderStrokeWidth,
      // disableHolesBorder: disableHolesBorder,
      isDotted: isDotted,
      // holePointsList: List.generate(
      //   getNumInteriorRing(),
      //   (index) => getInteriorRingN(index).toLatLng(),
      // ),
      points: getExteriorRing().toLatLng()..removeLast(),
    );
  }

  Polygon buildPolygon(
    Color borderColor,
    double borderStrokeWidth,
    Color color,
    bool isDotted,
    bool disableHolesBorder,
    List<LatLng> points,
    List<List<LatLng>> holes,
  ) {
    return Polygon(
      borderColor: borderColor,
      borderStrokeWidth: borderStrokeWidth,
      color: color,
      // disableHolesBorder: disableHolesBorder,
      isDotted: isDotted,
      // holePointsList: holes,
      points: points,
    );
  }
  List<LatLng> toLatLng() => getCoordinates().map((e) => LatLng(e.y,e.x)).toList();
}

extension NultiPolygonPlotExtension on jts.MultiPolygon {
  List<Polygon> plot({
    Color borderColor,
    Color color,
    double borderStrokeWidth,
    bool isDotted,
    bool disableHolesBorder,
  }) {
    return List.generate(
      getNumGeometries(),
      (index) => (getGeometryN(index) as jts.Polygon),
    ).map(
      (e) => e.plot(
        borderColor: borderColor,
        borderStrokeWidth: borderStrokeWidth,
        disableHolesBorder: disableHolesBorder,
        isDotted: isDotted,
        color: color,
      ),
    ).toList();
  }
}

extension LineStringPlotExtension on jts.LineString {
  Polyline plot({
    Color borderColor,
    double borderStrokeWidth,
    bool isDotted,
    Color color,
    List<double> colorsStop,
    List<Color> gradientColors,
    double strokeWidth,
  }) {
    return Polyline(
      borderColor: borderColor,
      borderStrokeWidth: borderStrokeWidth,
      isDotted: isDotted,
      color: color,
      colorsStop: colorsStop,
      gradientColors: gradientColors,
      points: this.getCoordinates().map((e) => e.toLatLng()).toList(),
      strokeWidth: strokeWidth,
    );
  }
}

extension MultiLineStringPlotExtension on jts.MultiLineString {
  List<Polyline> plot({
    Color borderColor,
    double borderStrokeWidth,
    bool isDotted,
    Color color,
    List<double> colorsStop,
    List<Color> gradientColors,
    double strokeWidth,
  }) {
    return List.generate(
      this.getNumGeometries(),
      (index) => (getGeometryN(index) as jts.LineString),
    )
        .map(
          (e) => e.plot(
            borderColor: borderColor,
            borderStrokeWidth: borderStrokeWidth,
            isDotted: isDotted,
            color: color,
            colorsStop: colorsStop,
            gradientColors: gradientColors,
            strokeWidth: strokeWidth,
          ),
        )
        .toList();
        // ListView.builder(itemBuilder: null)
  }

  List<Polyline> indexedPlot(int index,) {
    return List.generate(
      this.getNumGeometries(),
      (index) {
        final lineString = getGeometryN(index) as jts.LineString;
        return lineString.plot();
      },
    );
  }

  // List<Polyline> plotWithIndex(Polyline Function(BuildContext, int) itemBuilder) {

  // }
}
typedef IndexeLineStringBuilder = Polyline Function(int index);
typedef PlotLineStringFn = Polyline Function(Color borderColor,double borderStrokeWidth,bool isDotted, Color color,List<double> colorsStop,List<Color> gradientColors,double strokeWidth);

extension MultiGeometryExtension on jts.GeometryCollection {
  // List<Widget> plotUsingGeometryN()
}