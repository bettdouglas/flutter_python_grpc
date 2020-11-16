///
//  Generated code. Do not modify.
//  source: alaska.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'geometry.pb.dart' as $1;

import 'alaska.pbenum.dart';

export 'alaska.pbenum.dart';

class Feature extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Feature', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..e<Feature_FeatureType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feature', $pb.PbFieldType.OE, defaultOrMaker: Feature_FeatureType.AIRPORT, valueOf: Feature_FeatureType.valueOf, enumValues: Feature_FeatureType.values)
    ..hasRequiredFields = false
  ;

  Feature._() : super();
  factory Feature() => create();
  factory Feature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Feature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Feature clone() => Feature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Feature copyWith(void Function(Feature) updates) => super.copyWith((message) => updates(message as Feature)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Feature create() => Feature._();
  Feature createEmptyInstance() => create();
  static $pb.PbList<Feature> createRepeated() => $pb.PbList<Feature>();
  @$core.pragma('dart2js:noInline')
  static Feature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Feature>(create);
  static Feature _defaultInstance;

  @$pb.TagNumber(1)
  Feature_FeatureType get feature => $_getN(0);
  @$pb.TagNumber(1)
  set feature(Feature_FeatureType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeature() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeature() => clearField(1);
}

class River extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'River', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'codedesc')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..aOM<$1.Geometry>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'geom', subBuilder: $1.Geometry.create)
    ..hasRequiredFields = false
  ;

  River._() : super();
  factory River() => create();
  factory River.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory River.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  River clone() => River()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  River copyWith(void Function(River) updates) => super.copyWith((message) => updates(message as River)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static River create() => River._();
  River createEmptyInstance() => create();
  static $pb.PbList<River> createRepeated() => $pb.PbList<River>();
  @$core.pragma('dart2js:noInline')
  static River getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<River>(create);
  static River _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get codedesc => $_getSZ(1);
  @$pb.TagNumber(2)
  set codedesc($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCodedesc() => $_has(1);
  @$pb.TagNumber(2)
  void clearCodedesc() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get code => $_getSZ(3);
  @$pb.TagNumber(4)
  set code($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCode() => clearField(4);

  @$pb.TagNumber(5)
  $1.Geometry get geom => $_getN(4);
  @$pb.TagNumber(5)
  set geom($1.Geometry v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGeom() => $_has(4);
  @$pb.TagNumber(5)
  void clearGeom() => clearField(5);
  @$pb.TagNumber(5)
  $1.Geometry ensureGeom() => $_ensure(4);
}

class Rivers extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Rivers', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..pc<River>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rivers', $pb.PbFieldType.PM, subBuilder: River.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'srid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Rivers._() : super();
  factory Rivers() => create();
  factory Rivers.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Rivers.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Rivers clone() => Rivers()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Rivers copyWith(void Function(Rivers) updates) => super.copyWith((message) => updates(message as Rivers)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Rivers create() => Rivers._();
  Rivers createEmptyInstance() => create();
  static $pb.PbList<Rivers> createRepeated() => $pb.PbList<Rivers>();
  @$core.pragma('dart2js:noInline')
  static Rivers getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Rivers>(create);
  static Rivers _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<River> get rivers => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get srid => $_getIZ(1);
  @$pb.TagNumber(2)
  set srid($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrid() => clearField(2);
}

class Airport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Airport', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gid', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fkRegion', $pb.PbFieldType.O3)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'elevation', $pb.PbFieldType.OD)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'use')
    ..aOM<$1.Geometry>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'geom', subBuilder: $1.Geometry.create)
    ..hasRequiredFields = false
  ;

  Airport._() : super();
  factory Airport() => create();
  factory Airport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Airport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Airport clone() => Airport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Airport copyWith(void Function(Airport) updates) => super.copyWith((message) => updates(message as Airport)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Airport create() => Airport._();
  Airport createEmptyInstance() => create();
  static $pb.PbList<Airport> createRepeated() => $pb.PbList<Airport>();
  @$core.pragma('dart2js:noInline')
  static Airport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Airport>(create);
  static Airport _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gid => $_getIZ(0);
  @$pb.TagNumber(1)
  set gid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get id => $_getIZ(1);
  @$pb.TagNumber(2)
  set id($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasId() => $_has(1);
  @$pb.TagNumber(2)
  void clearId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get fkRegion => $_getIZ(2);
  @$pb.TagNumber(3)
  set fkRegion($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFkRegion() => $_has(2);
  @$pb.TagNumber(3)
  void clearFkRegion() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get elevation => $_getN(3);
  @$pb.TagNumber(4)
  set elevation($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasElevation() => $_has(3);
  @$pb.TagNumber(4)
  void clearElevation() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get use => $_getSZ(5);
  @$pb.TagNumber(6)
  set use($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUse() => $_has(5);
  @$pb.TagNumber(6)
  void clearUse() => clearField(6);

  @$pb.TagNumber(7)
  $1.Geometry get geom => $_getN(6);
  @$pb.TagNumber(7)
  set geom($1.Geometry v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasGeom() => $_has(6);
  @$pb.TagNumber(7)
  void clearGeom() => clearField(7);
  @$pb.TagNumber(7)
  $1.Geometry ensureGeom() => $_ensure(6);
}

class Airports extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Airports', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..pc<Airport>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'airports', $pb.PbFieldType.PM, subBuilder: Airport.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'srid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Airports._() : super();
  factory Airports() => create();
  factory Airports.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Airports.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Airports clone() => Airports()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Airports copyWith(void Function(Airports) updates) => super.copyWith((message) => updates(message as Airports)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Airports create() => Airports._();
  Airports createEmptyInstance() => create();
  static $pb.PbList<Airports> createRepeated() => $pb.PbList<Airports>();
  @$core.pragma('dart2js:noInline')
  static Airports getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Airports>(create);
  static Airports _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Airport> get airports => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get srid => $_getIZ(1);
  @$pb.TagNumber(2)
  set srid($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrid() => clearField(2);
}

class Lake extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Lake', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gid', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOM<$1.Geometry>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'geom', subBuilder: $1.Geometry.create)
    ..hasRequiredFields = false
  ;

  Lake._() : super();
  factory Lake() => create();
  factory Lake.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lake.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lake clone() => Lake()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lake copyWith(void Function(Lake) updates) => super.copyWith((message) => updates(message as Lake)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Lake create() => Lake._();
  Lake createEmptyInstance() => create();
  static $pb.PbList<Lake> createRepeated() => $pb.PbList<Lake>();
  @$core.pragma('dart2js:noInline')
  static Lake getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lake>(create);
  static Lake _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gid => $_getIZ(0);
  @$pb.TagNumber(1)
  set gid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $1.Geometry get geom => $_getN(2);
  @$pb.TagNumber(3)
  set geom($1.Geometry v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGeom() => $_has(2);
  @$pb.TagNumber(3)
  void clearGeom() => clearField(3);
  @$pb.TagNumber(3)
  $1.Geometry ensureGeom() => $_ensure(2);
}

class Lakes extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Lakes', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..pc<Lake>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lakes', $pb.PbFieldType.PM, subBuilder: Lake.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'srid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Lakes._() : super();
  factory Lakes() => create();
  factory Lakes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lakes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lakes clone() => Lakes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lakes copyWith(void Function(Lakes) updates) => super.copyWith((message) => updates(message as Lakes)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Lakes create() => Lakes._();
  Lakes createEmptyInstance() => create();
  static $pb.PbList<Lakes> createRepeated() => $pb.PbList<Lakes>();
  @$core.pragma('dart2js:noInline')
  static Lakes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lakes>(create);
  static Lakes _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Lake> get lakes => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get srid => $_getIZ(1);
  @$pb.TagNumber(2)
  set srid($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrid() => clearField(2);
}

class BuiltUp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BuiltUp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'gid', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'category', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code')
    ..aOM<$1.Geometry>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'geom', subBuilder: $1.Geometry.create)
    ..hasRequiredFields = false
  ;

  BuiltUp._() : super();
  factory BuiltUp() => create();
  factory BuiltUp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuiltUp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuiltUp clone() => BuiltUp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuiltUp copyWith(void Function(BuiltUp) updates) => super.copyWith((message) => updates(message as BuiltUp)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuiltUp create() => BuiltUp._();
  BuiltUp createEmptyInstance() => create();
  static $pb.PbList<BuiltUp> createRepeated() => $pb.PbList<BuiltUp>();
  @$core.pragma('dart2js:noInline')
  static BuiltUp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuiltUp>(create);
  static BuiltUp _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get gid => $_getIZ(0);
  @$pb.TagNumber(1)
  set gid($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGid() => $_has(0);
  @$pb.TagNumber(1)
  void clearGid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get category => $_getIZ(1);
  @$pb.TagNumber(2)
  set category($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCategory() => $_has(1);
  @$pb.TagNumber(2)
  void clearCategory() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get code => $_getSZ(3);
  @$pb.TagNumber(4)
  set code($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCode() => $_has(3);
  @$pb.TagNumber(4)
  void clearCode() => clearField(4);

  @$pb.TagNumber(5)
  $1.Geometry get geom => $_getN(4);
  @$pb.TagNumber(5)
  set geom($1.Geometry v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasGeom() => $_has(4);
  @$pb.TagNumber(5)
  void clearGeom() => clearField(5);
  @$pb.TagNumber(5)
  $1.Geometry ensureGeom() => $_ensure(4);
}

class BuiltUps extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BuiltUps', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..pc<BuiltUp>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'builtups', $pb.PbFieldType.PM, subBuilder: BuiltUp.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'srid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  BuiltUps._() : super();
  factory BuiltUps() => create();
  factory BuiltUps.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuiltUps.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuiltUps clone() => BuiltUps()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuiltUps copyWith(void Function(BuiltUps) updates) => super.copyWith((message) => updates(message as BuiltUps)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuiltUps create() => BuiltUps._();
  BuiltUps createEmptyInstance() => create();
  static $pb.PbList<BuiltUps> createRepeated() => $pb.PbList<BuiltUps>();
  @$core.pragma('dart2js:noInline')
  static BuiltUps getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuiltUps>(create);
  static BuiltUps _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BuiltUp> get builtups => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get srid => $_getIZ(1);
  @$pb.TagNumber(2)
  set srid($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrid() => clearField(2);
}

class Region extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Region', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type')
    ..aOM<$1.Geometry>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'geom', subBuilder: $1.Geometry.create)
    ..hasRequiredFields = false
  ;

  Region._() : super();
  factory Region() => create();
  factory Region.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Region.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Region clone() => Region()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Region copyWith(void Function(Region) updates) => super.copyWith((message) => updates(message as Region)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Region create() => Region._();
  Region createEmptyInstance() => create();
  static $pb.PbList<Region> createRepeated() => $pb.PbList<Region>();
  @$core.pragma('dart2js:noInline')
  static Region getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Region>(create);
  static Region _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get type => $_getSZ(2);
  @$pb.TagNumber(3)
  set type($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasType() => $_has(2);
  @$pb.TagNumber(3)
  void clearType() => clearField(3);

  @$pb.TagNumber(4)
  $1.Geometry get geom => $_getN(3);
  @$pb.TagNumber(4)
  set geom($1.Geometry v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasGeom() => $_has(3);
  @$pb.TagNumber(4)
  void clearGeom() => clearField(4);
  @$pb.TagNumber(4)
  $1.Geometry ensureGeom() => $_ensure(3);
}

class Regions extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Regions', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'alaska'), createEmptyInstance: create)
    ..pc<Region>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'regions', $pb.PbFieldType.PM, subBuilder: Region.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'srid', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  Regions._() : super();
  factory Regions() => create();
  factory Regions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Regions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Regions clone() => Regions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Regions copyWith(void Function(Regions) updates) => super.copyWith((message) => updates(message as Regions)); // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Regions create() => Regions._();
  Regions createEmptyInstance() => create();
  static $pb.PbList<Regions> createRepeated() => $pb.PbList<Regions>();
  @$core.pragma('dart2js:noInline')
  static Regions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Regions>(create);
  static Regions _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Region> get regions => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get srid => $_getIZ(1);
  @$pb.TagNumber(2)
  set srid($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSrid() => $_has(1);
  @$pb.TagNumber(2)
  void clearSrid() => clearField(2);
}

