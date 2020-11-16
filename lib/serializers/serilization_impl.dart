import 'package:dart_jts/dart_jts.dart' as jts;
import 'package:i_know_everything/alaska_protos/index.dart' as pb;

enum SerializerType {
  PROTOBUF_SERIALIZER_VS,
  PROTOBUF_SERIALIZER_LT,
  AVRO_SERIALIZER_VS,
  AVRO_SERIALIZER_LT,
}

enum DeserializationType {
  PROTOBUF_SERIALIZER_VS,
  GEOJSON,
}

abstract class SerializationHandler {
  SerializerType type;

  pb.Geometry serialize(dynamic geometry);
}

abstract class DeserializationHandler {
  DeserializationType type;

  jts.Geometry deserialize(pb.Geometry geometry);
}

