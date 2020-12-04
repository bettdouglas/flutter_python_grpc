import 'package:dart_jts/dart_jts.dart';
import 'package:i_know_everything/alaska_protos/index.dart';
import 'package:i_know_everything/constants.dart';

extension RiverAsLineString on River {
  LineString get asLineString => pbDeserializer.deserializeLineString(this.geom);
}

extension AirportAsPoint on Airport {
  Point get asPoint => pbDeserializer.deserializePoint(this.geom);
}

extension RegionAsMultiPolygon on Region {
  MultiPolygon get asMultiPolygon => pbDeserializer.deserializeMultiPolygon(this.geom);
}

extension LakeAsPolygon on Lake {
  Polygon get asPolygon => pbDeserializer.deserializePolygon(this.geom);
}

extension BuiltUpAsPolygon on BuiltUp {
  Polygon get asPolygon => pbDeserializer.deserializePolygon(this.geom);
}

extension PipelineAsLineString on Pipeline {
  LineString get asLineString => pbDeserializer.deserializeLineString(this.geom);
}

extension TreesAsPolygons on Tree {
  Polygon get asPolygon => pbDeserializer.deserializePolygon(this.geom);
}