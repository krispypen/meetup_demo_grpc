///
//  Generated code. Do not modify.
//  source: com/krispypen/weather/v1/weather.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'weather.pb.dart' as $0;
export 'weather.pb.dart';

class WeatherInfoServiceClient extends $grpc.Client {
  static final _$getCurrentWeatherInfo =
      $grpc.ClientMethod<$0.GetCurrentWeatherInfoRequest, $0.GetCurrentWeatherInfoResponse>(
          '/com.krispypen.weather.v1.WeatherInfoService/GetCurrentWeatherInfo',
          ($0.GetCurrentWeatherInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.GetCurrentWeatherInfoResponse.fromBuffer(value));
  static final _$streamCurrentWeatherInfo =
      $grpc.ClientMethod<$0.StreamCurrentWeatherInfoRequest, $0.StreamCurrentWeatherInfoResponse>(
          '/com.krispypen.weather.v1.WeatherInfoService/StreamCurrentWeatherInfo',
          ($0.StreamCurrentWeatherInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StreamCurrentWeatherInfoResponse.fromBuffer(value));
  static final _$getLocations = $grpc.ClientMethod<$0.GetLocationsRequest, $0.GetLocationsResponse>(
      '/com.krispypen.weather.v1.WeatherInfoService/GetLocations',
      ($0.GetLocationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetLocationsResponse.fromBuffer(value));

  WeatherInfoServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options, $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetCurrentWeatherInfoResponse> getCurrentWeatherInfo($0.GetCurrentWeatherInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCurrentWeatherInfo, request, options: options);
  }

  $grpc.ResponseStream<$0.StreamCurrentWeatherInfoResponse> streamCurrentWeatherInfo(
      $0.StreamCurrentWeatherInfoRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(_$streamCurrentWeatherInfo, $async.Stream.fromIterable([request]), options: options);
  }

  $grpc.ResponseFuture<$0.GetLocationsResponse> getLocations($0.GetLocationsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLocations, request, options: options);
  }
}

abstract class WeatherInfoServiceBase extends $grpc.Service {
  $core.String get $name => 'com.krispypen.weather.v1.WeatherInfoService';

  WeatherInfoServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetCurrentWeatherInfoRequest, $0.GetCurrentWeatherInfoResponse>(
        'GetCurrentWeatherInfo',
        getCurrentWeatherInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetCurrentWeatherInfoRequest.fromBuffer(value),
        ($0.GetCurrentWeatherInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StreamCurrentWeatherInfoRequest, $0.StreamCurrentWeatherInfoResponse>(
        'StreamCurrentWeatherInfo',
        streamCurrentWeatherInfo_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.StreamCurrentWeatherInfoRequest.fromBuffer(value),
        ($0.StreamCurrentWeatherInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetLocationsRequest, $0.GetLocationsResponse>(
        'GetLocations',
        getLocations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetLocationsRequest.fromBuffer(value),
        ($0.GetLocationsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetCurrentWeatherInfoResponse> getCurrentWeatherInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetCurrentWeatherInfoRequest> request) async {
    return getCurrentWeatherInfo(call, await request);
  }

  $async.Stream<$0.StreamCurrentWeatherInfoResponse> streamCurrentWeatherInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StreamCurrentWeatherInfoRequest> request) async* {
    yield* streamCurrentWeatherInfo(call, await request);
  }

  $async.Future<$0.GetLocationsResponse> getLocations_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetLocationsRequest> request) async {
    return getLocations(call, await request);
  }

  $async.Future<$0.GetCurrentWeatherInfoResponse> getCurrentWeatherInfo(
      $grpc.ServiceCall call, $0.GetCurrentWeatherInfoRequest request);
  $async.Stream<$0.StreamCurrentWeatherInfoResponse> streamCurrentWeatherInfo(
      $grpc.ServiceCall call, $0.StreamCurrentWeatherInfoRequest request);
  $async.Future<$0.GetLocationsResponse> getLocations($grpc.ServiceCall call, $0.GetLocationsRequest request);
}
