///
//  Generated code. Do not modify.
//  source: com/krispypen/weather/v1/weather.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'weather.pbenum.dart';

export 'weather.pbenum.dart';

class GetCurrentWeatherInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCurrentWeatherInfoRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.krispypen.weather.v1'),
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationId')
    ..hasRequiredFields = false;

  GetCurrentWeatherInfoRequest._() : super();
  factory GetCurrentWeatherInfoRequest({
    $core.String? locationId,
  }) {
    final _result = create();
    if (locationId != null) {
      _result.locationId = locationId;
    }
    return _result;
  }
  factory GetCurrentWeatherInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCurrentWeatherInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetCurrentWeatherInfoRequest clone() => GetCurrentWeatherInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetCurrentWeatherInfoRequest copyWith(void Function(GetCurrentWeatherInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetCurrentWeatherInfoRequest))
          as GetCurrentWeatherInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCurrentWeatherInfoRequest create() => GetCurrentWeatherInfoRequest._();
  GetCurrentWeatherInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetCurrentWeatherInfoRequest> createRepeated() => $pb.PbList<GetCurrentWeatherInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCurrentWeatherInfoRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCurrentWeatherInfoRequest>(create);
  static GetCurrentWeatherInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set locationId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);
}

enum GetCurrentWeatherInfoResponse_Main { weatherInfo, error, notSet }

class GetCurrentWeatherInfoResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, GetCurrentWeatherInfoResponse_Main> _GetCurrentWeatherInfoResponse_MainByTag = {
    1: GetCurrentWeatherInfoResponse_Main.weatherInfo,
    2: GetCurrentWeatherInfoResponse_Main.error,
    0: GetCurrentWeatherInfoResponse_Main.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetCurrentWeatherInfoResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.krispypen.weather.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<WeatherInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weatherInfo',
        subBuilder: WeatherInfo.create)
    ..aOM<Error>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error',
        subBuilder: Error.create)
    ..hasRequiredFields = false;

  GetCurrentWeatherInfoResponse._() : super();
  factory GetCurrentWeatherInfoResponse({
    WeatherInfo? weatherInfo,
    Error? error,
  }) {
    final _result = create();
    if (weatherInfo != null) {
      _result.weatherInfo = weatherInfo;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory GetCurrentWeatherInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetCurrentWeatherInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetCurrentWeatherInfoResponse clone() => GetCurrentWeatherInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetCurrentWeatherInfoResponse copyWith(void Function(GetCurrentWeatherInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetCurrentWeatherInfoResponse))
          as GetCurrentWeatherInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetCurrentWeatherInfoResponse create() => GetCurrentWeatherInfoResponse._();
  GetCurrentWeatherInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetCurrentWeatherInfoResponse> createRepeated() => $pb.PbList<GetCurrentWeatherInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCurrentWeatherInfoResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCurrentWeatherInfoResponse>(create);
  static GetCurrentWeatherInfoResponse? _defaultInstance;

  GetCurrentWeatherInfoResponse_Main whichMain() => _GetCurrentWeatherInfoResponse_MainByTag[$_whichOneof(0)]!;
  void clearMain() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WeatherInfo get weatherInfo => $_getN(0);
  @$pb.TagNumber(1)
  set weatherInfo(WeatherInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWeatherInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeatherInfo() => clearField(1);
  @$pb.TagNumber(1)
  WeatherInfo ensureWeatherInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);
}

class WeatherInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WeatherInfo',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.krispypen.weather.v1'),
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message')
    ..a<$core.double>(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'temperature', $pb.PbFieldType.OD)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isNight')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isCloudy')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isRainy')
    ..hasRequiredFields = false;

  WeatherInfo._() : super();
  factory WeatherInfo({
    $core.String? message,
    $core.double? temperature,
    $core.bool? isNight,
    $core.bool? isCloudy,
    $core.bool? isRainy,
  }) {
    final _result = create();
    if (message != null) {
      _result.message = message;
    }
    if (temperature != null) {
      _result.temperature = temperature;
    }
    if (isNight != null) {
      _result.isNight = isNight;
    }
    if (isCloudy != null) {
      _result.isCloudy = isCloudy;
    }
    if (isRainy != null) {
      _result.isRainy = isRainy;
    }
    return _result;
  }
  factory WeatherInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WeatherInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  WeatherInfo clone() => WeatherInfo()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  WeatherInfo copyWith(void Function(WeatherInfo) updates) =>
      super.copyWith((message) => updates(message as WeatherInfo)) as WeatherInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WeatherInfo create() => WeatherInfo._();
  WeatherInfo createEmptyInstance() => create();
  static $pb.PbList<WeatherInfo> createRepeated() => $pb.PbList<WeatherInfo>();
  @$core.pragma('dart2js:noInline')
  static WeatherInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WeatherInfo>(create);
  static WeatherInfo? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get message => $_getSZ(0);
  @$pb.TagNumber(1)
  set message($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasMessage() => $_has(0);
  @$pb.TagNumber(1)
  void clearMessage() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get temperature => $_getN(1);
  @$pb.TagNumber(2)
  set temperature($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTemperature() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemperature() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isNight => $_getBF(2);
  @$pb.TagNumber(3)
  set isNight($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasIsNight() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsNight() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isCloudy => $_getBF(3);
  @$pb.TagNumber(4)
  set isCloudy($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasIsCloudy() => $_has(3);
  @$pb.TagNumber(4)
  void clearIsCloudy() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get isRainy => $_getBF(4);
  @$pb.TagNumber(5)
  set isRainy($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasIsRainy() => $_has(4);
  @$pb.TagNumber(5)
  void clearIsRainy() => clearField(5);
}

class Error extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Error',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.krispypen.weather.v1'),
      createEmptyInstance: create)
    ..e<ErrorType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE,
        defaultOrMaker: ErrorType.ERROR_TYPE_UNSPECIFIED, valueOf: ErrorType.valueOf, enumValues: ErrorType.values)
    ..m<$core.String, $core.String>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'message',
        entryClassName: 'Error.MessageEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('com.krispypen.weather.v1'))
    ..hasRequiredFields = false;

  Error._() : super();
  factory Error({
    ErrorType? type,
    $core.Map<$core.String, $core.String>? message,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (message != null) {
      _result.message.addAll(message);
    }
    return _result;
  }
  factory Error.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Error.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Error clone() => Error()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Error copyWith(void Function(Error) updates) =>
      super.copyWith((message) => updates(message as Error)) as Error; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Error create() => Error._();
  Error createEmptyInstance() => create();
  static $pb.PbList<Error> createRepeated() => $pb.PbList<Error>();
  @$core.pragma('dart2js:noInline')
  static Error getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Error>(create);
  static Error? _defaultInstance;

  @$pb.TagNumber(1)
  ErrorType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ErrorType v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get message => $_getMap(1);
}

class StreamCurrentWeatherInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamCurrentWeatherInfoRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.krispypen.weather.v1'),
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locationId')
    ..hasRequiredFields = false;

  StreamCurrentWeatherInfoRequest._() : super();
  factory StreamCurrentWeatherInfoRequest({
    $core.String? locationId,
  }) {
    final _result = create();
    if (locationId != null) {
      _result.locationId = locationId;
    }
    return _result;
  }
  factory StreamCurrentWeatherInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamCurrentWeatherInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamCurrentWeatherInfoRequest clone() => StreamCurrentWeatherInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamCurrentWeatherInfoRequest copyWith(void Function(StreamCurrentWeatherInfoRequest) updates) =>
      super.copyWith((message) => updates(message as StreamCurrentWeatherInfoRequest))
          as StreamCurrentWeatherInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamCurrentWeatherInfoRequest create() => StreamCurrentWeatherInfoRequest._();
  StreamCurrentWeatherInfoRequest createEmptyInstance() => create();
  static $pb.PbList<StreamCurrentWeatherInfoRequest> createRepeated() => $pb.PbList<StreamCurrentWeatherInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static StreamCurrentWeatherInfoRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamCurrentWeatherInfoRequest>(create);
  static StreamCurrentWeatherInfoRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get locationId => $_getSZ(0);
  @$pb.TagNumber(1)
  set locationId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLocationId() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocationId() => clearField(1);
}

enum StreamCurrentWeatherInfoResponse_Main { weatherInfo, error, notSet }

class StreamCurrentWeatherInfoResponse extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, StreamCurrentWeatherInfoResponse_Main> _StreamCurrentWeatherInfoResponse_MainByTag =
      {
    1: StreamCurrentWeatherInfoResponse_Main.weatherInfo,
    2: StreamCurrentWeatherInfoResponse_Main.error,
    0: StreamCurrentWeatherInfoResponse_Main.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StreamCurrentWeatherInfoResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.krispypen.weather.v1'),
      createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<WeatherInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weatherInfo',
        subBuilder: WeatherInfo.create)
    ..aOM<Error>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error',
        subBuilder: Error.create)
    ..hasRequiredFields = false;

  StreamCurrentWeatherInfoResponse._() : super();
  factory StreamCurrentWeatherInfoResponse({
    WeatherInfo? weatherInfo,
    Error? error,
  }) {
    final _result = create();
    if (weatherInfo != null) {
      _result.weatherInfo = weatherInfo;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory StreamCurrentWeatherInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StreamCurrentWeatherInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  StreamCurrentWeatherInfoResponse clone() => StreamCurrentWeatherInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  StreamCurrentWeatherInfoResponse copyWith(void Function(StreamCurrentWeatherInfoResponse) updates) =>
      super.copyWith((message) => updates(message as StreamCurrentWeatherInfoResponse))
          as StreamCurrentWeatherInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StreamCurrentWeatherInfoResponse create() => StreamCurrentWeatherInfoResponse._();
  StreamCurrentWeatherInfoResponse createEmptyInstance() => create();
  static $pb.PbList<StreamCurrentWeatherInfoResponse> createRepeated() =>
      $pb.PbList<StreamCurrentWeatherInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static StreamCurrentWeatherInfoResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StreamCurrentWeatherInfoResponse>(create);
  static StreamCurrentWeatherInfoResponse? _defaultInstance;

  StreamCurrentWeatherInfoResponse_Main whichMain() => _StreamCurrentWeatherInfoResponse_MainByTag[$_whichOneof(0)]!;
  void clearMain() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  WeatherInfo get weatherInfo => $_getN(0);
  @$pb.TagNumber(1)
  set weatherInfo(WeatherInfo v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasWeatherInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearWeatherInfo() => clearField(1);
  @$pb.TagNumber(1)
  WeatherInfo ensureWeatherInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  Error get error => $_getN(1);
  @$pb.TagNumber(2)
  set error(Error v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
  @$pb.TagNumber(2)
  Error ensureError() => $_ensure(1);
}

class GetLocationsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocationsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.krispypen.weather.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetLocationsRequest._() : super();
  factory GetLocationsRequest() => create();
  factory GetLocationsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetLocationsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetLocationsRequest clone() => GetLocationsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetLocationsRequest copyWith(void Function(GetLocationsRequest) updates) =>
      super.copyWith((message) => updates(message as GetLocationsRequest))
          as GetLocationsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLocationsRequest create() => GetLocationsRequest._();
  GetLocationsRequest createEmptyInstance() => create();
  static $pb.PbList<GetLocationsRequest> createRepeated() => $pb.PbList<GetLocationsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLocationsRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationsRequest>(create);
  static GetLocationsRequest? _defaultInstance;
}

class GetLocationsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetLocationsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.krispypen.weather.v1'),
      createEmptyInstance: create)
    ..pc<Location>(
        1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'locations', $pb.PbFieldType.PM,
        subBuilder: Location.create)
    ..hasRequiredFields = false;

  GetLocationsResponse._() : super();
  factory GetLocationsResponse({
    $core.Iterable<Location>? locations,
  }) {
    final _result = create();
    if (locations != null) {
      _result.locations.addAll(locations);
    }
    return _result;
  }
  factory GetLocationsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetLocationsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetLocationsResponse clone() => GetLocationsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetLocationsResponse copyWith(void Function(GetLocationsResponse) updates) =>
      super.copyWith((message) => updates(message as GetLocationsResponse))
          as GetLocationsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLocationsResponse create() => GetLocationsResponse._();
  GetLocationsResponse createEmptyInstance() => create();
  static $pb.PbList<GetLocationsResponse> createRepeated() => $pb.PbList<GetLocationsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetLocationsResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetLocationsResponse>(create);
  static GetLocationsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Location> get locations => $_getList(0);
}

class Location extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Location',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'com.krispypen.weather.v1'),
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id')
    ..a<$core.double>(
        2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  Location._() : super();
  factory Location({
    $core.String? id,
    $core.double? name,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    return _result;
  }
  factory Location.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Location.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Location clone() => Location()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Location copyWith(void Function(Location) updates) =>
      super.copyWith((message) => updates(message as Location)) as Location; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Location create() => Location._();
  Location createEmptyInstance() => create();
  static $pb.PbList<Location> createRepeated() => $pb.PbList<Location>();
  @$core.pragma('dart2js:noInline')
  static Location getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Location>(create);
  static Location? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get name => $_getN(1);
  @$pb.TagNumber(2)
  set name($core.double v) {
    $_setDouble(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}
