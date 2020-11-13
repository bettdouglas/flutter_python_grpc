///
//  Generated code. Do not modify.
//  source: alaska.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class Feature_FeatureType extends $pb.ProtobufEnum {
  static const Feature_FeatureType AIRPORT = Feature_FeatureType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AIRPORT');
  static const Feature_FeatureType LAKE = Feature_FeatureType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LAKE');
  static const Feature_FeatureType RIVER = Feature_FeatureType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RIVER');
  static const Feature_FeatureType BUILT_UPS = Feature_FeatureType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BUILT_UPS');
  static const Feature_FeatureType REGIONS = Feature_FeatureType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REGIONS');
  static const Feature_FeatureType TREES = Feature_FeatureType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TREES');

  static const $core.List<Feature_FeatureType> values = <Feature_FeatureType> [
    AIRPORT,
    LAKE,
    RIVER,
    BUILT_UPS,
    REGIONS,
    TREES,
  ];

  static final $core.Map<$core.int, Feature_FeatureType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Feature_FeatureType valueOf($core.int value) => _byValue[value];

  const Feature_FeatureType._($core.int v, $core.String n) : super(v, n);
}

