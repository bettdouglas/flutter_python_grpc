///
//  Generated code. Do not modify.
//  source: alaska.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'alaska.pb.dart' as $0;
export 'alaska.pb.dart';

class AlaskerClient extends $grpc.Client {
  static final _$getRivers = $grpc.ClientMethod<$0.Feature, $0.Rivers>(
      '/alaska.Alasker/GetRivers',
      ($0.Feature value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Rivers.fromBuffer(value));
  static final _$getRegions = $grpc.ClientMethod<$0.Feature, $0.Regions>(
      '/alaska.Alasker/GetRegions',
      ($0.Feature value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Regions.fromBuffer(value));
  static final _$getLakes = $grpc.ClientMethod<$0.Feature, $0.Lakes>(
      '/alaska.Alasker/GetLakes',
      ($0.Feature value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Lakes.fromBuffer(value));
  static final _$getAirports = $grpc.ClientMethod<$0.Feature, $0.Airports>(
      '/alaska.Alasker/GetAirports',
      ($0.Feature value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Airports.fromBuffer(value));
  static final _$getBuildUps = $grpc.ClientMethod<$0.Feature, $0.BuiltUps>(
      '/alaska.Alasker/GetBuildUps',
      ($0.Feature value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BuiltUps.fromBuffer(value));

  AlaskerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Rivers> getRivers($0.Feature request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getRivers, request, options: options);
  }

  $grpc.ResponseFuture<$0.Regions> getRegions($0.Feature request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getRegions, request, options: options);
  }

  $grpc.ResponseFuture<$0.Lakes> getLakes($0.Feature request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getLakes, request, options: options);
  }

  $grpc.ResponseFuture<$0.Airports> getAirports($0.Feature request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getAirports, request, options: options);
  }

  $grpc.ResponseFuture<$0.BuiltUps> getBuildUps($0.Feature request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getBuildUps, request, options: options);
  }
}

abstract class AlaskerServiceBase extends $grpc.Service {
  $core.String get $name => 'alaska.Alasker';

  AlaskerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.Feature, $0.Rivers>(
        'GetRivers',
        getRivers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Feature.fromBuffer(value),
        ($0.Rivers value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Feature, $0.Regions>(
        'GetRegions',
        getRegions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Feature.fromBuffer(value),
        ($0.Regions value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Feature, $0.Lakes>(
        'GetLakes',
        getLakes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Feature.fromBuffer(value),
        ($0.Lakes value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Feature, $0.Airports>(
        'GetAirports',
        getAirports_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Feature.fromBuffer(value),
        ($0.Airports value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Feature, $0.BuiltUps>(
        'GetBuildUps',
        getBuildUps_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Feature.fromBuffer(value),
        ($0.BuiltUps value) => value.writeToBuffer()));
  }

  $async.Future<$0.Rivers> getRivers_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Feature> request) async {
    return getRivers(call, await request);
  }

  $async.Future<$0.Regions> getRegions_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Feature> request) async {
    return getRegions(call, await request);
  }

  $async.Future<$0.Lakes> getLakes_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Feature> request) async {
    return getLakes(call, await request);
  }

  $async.Future<$0.Airports> getAirports_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Feature> request) async {
    return getAirports(call, await request);
  }

  $async.Future<$0.BuiltUps> getBuildUps_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Feature> request) async {
    return getBuildUps(call, await request);
  }

  $async.Future<$0.Rivers> getRivers(
      $grpc.ServiceCall call, $0.Feature request);
  $async.Future<$0.Regions> getRegions(
      $grpc.ServiceCall call, $0.Feature request);
  $async.Future<$0.Lakes> getLakes($grpc.ServiceCall call, $0.Feature request);
  $async.Future<$0.Airports> getAirports(
      $grpc.ServiceCall call, $0.Feature request);
  $async.Future<$0.BuiltUps> getBuildUps(
      $grpc.ServiceCall call, $0.Feature request);
}
