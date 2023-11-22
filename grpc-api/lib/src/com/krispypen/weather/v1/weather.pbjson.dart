///
//  Generated code. Do not modify.
//  source: com/krispypen/weather/v1/weather.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use errorTypeDescriptor instead')
const ErrorType$json = const {
  '1': 'ErrorType',
  '2': const [
    const {'1': 'ERROR_TYPE_UNSPECIFIED', '2': 0},
    const {'1': 'ERROR_TYPE_NOTFOUND', '2': 1},
    const {'1': 'ERROR_TYPE_PERMISSION_DENIED', '2': 2},
    const {'1': 'ERROR_TYPE_BACKEND_GONE', '2': 3},
    const {'1': 'ERROR_TYPE_TOKEN_EXPIRED', '2': 4},
    const {'1': 'ERROR_TYPE_RATE_LIMITED', '2': 5},
  ],
};

/// Descriptor for `ErrorType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List errorTypeDescriptor = $convert.base64Decode(
    'CglFcnJvclR5cGUSGgoWRVJST1JfVFlQRV9VTlNQRUNJRklFRBAAEhcKE0VSUk9SX1RZUEVfTk9URk9VTkQQARIgChxFUlJPUl9UWVBFX1BFUk1JU1NJT05fREVOSUVEEAISGwoXRVJST1JfVFlQRV9CQUNLRU5EX0dPTkUQAxIcChhFUlJPUl9UWVBFX1RPS0VOX0VYUElSRUQQBBIbChdFUlJPUl9UWVBFX1JBVEVfTElNSVRFRBAF');
@$core.Deprecated('Use getCurrentWeatherInfoRequestDescriptor instead')
const GetCurrentWeatherInfoRequest$json = const {
  '1': 'GetCurrentWeatherInfoRequest',
  '2': const [
    const {'1': 'location_id', '3': 1, '4': 1, '5': 9, '10': 'locationId'},
  ],
};

/// Descriptor for `GetCurrentWeatherInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentWeatherInfoRequestDescriptor =
    $convert.base64Decode('ChxHZXRDdXJyZW50V2VhdGhlckluZm9SZXF1ZXN0Eh8KC2xvY2F0aW9uX2lkGAEgASgJUgpsb2NhdGlvbklk');
@$core.Deprecated('Use getCurrentWeatherInfoResponseDescriptor instead')
const GetCurrentWeatherInfoResponse$json = const {
  '1': 'GetCurrentWeatherInfoResponse',
  '2': const [
    const {
      '1': 'weather_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.com.krispypen.weather.v1.WeatherInfo',
      '9': 0,
      '10': 'weatherInfo'
    },
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.com.krispypen.weather.v1.Error', '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'main'},
  ],
};

/// Descriptor for `GetCurrentWeatherInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCurrentWeatherInfoResponseDescriptor = $convert.base64Decode(
    'Ch1HZXRDdXJyZW50V2VhdGhlckluZm9SZXNwb25zZRJKCgx3ZWF0aGVyX2luZm8YASABKAsyJS5jb20ua3Jpc3B5cGVuLndlYXRoZXIudjEuV2VhdGhlckluZm9IAFILd2VhdGhlckluZm8SNwoFZXJyb3IYAiABKAsyHy5jb20ua3Jpc3B5cGVuLndlYXRoZXIudjEuRXJyb3JIAFIFZXJyb3JCBgoEbWFpbg==');
@$core.Deprecated('Use weatherInfoDescriptor instead')
const WeatherInfo$json = const {
  '1': 'WeatherInfo',
  '2': const [
    const {'1': 'message', '3': 1, '4': 1, '5': 9, '10': 'message'},
    const {'1': 'temperature', '3': 2, '4': 1, '5': 1, '10': 'temperature'},
    const {'1': 'is_night', '3': 3, '4': 1, '5': 8, '10': 'isNight'},
    const {'1': 'is_cloudy', '3': 4, '4': 1, '5': 8, '10': 'isCloudy'},
    const {'1': 'is_rainy', '3': 5, '4': 1, '5': 8, '10': 'isRainy'},
  ],
};

/// Descriptor for `WeatherInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weatherInfoDescriptor = $convert.base64Decode(
    'CgtXZWF0aGVySW5mbxIYCgdtZXNzYWdlGAEgASgJUgdtZXNzYWdlEiAKC3RlbXBlcmF0dXJlGAIgASgBUgt0ZW1wZXJhdHVyZRIZCghpc19uaWdodBgDIAEoCFIHaXNOaWdodBIbCglpc19jbG91ZHkYBCABKAhSCGlzQ2xvdWR5EhkKCGlzX3JhaW55GAUgASgIUgdpc1JhaW55');
@$core.Deprecated('Use errorDescriptor instead')
const Error$json = const {
  '1': 'Error',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.com.krispypen.weather.v1.ErrorType', '10': 'type'},
    const {
      '1': 'message',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.com.krispypen.weather.v1.Error.MessageEntry',
      '10': 'message'
    },
  ],
  '3': const [Error_MessageEntry$json],
};

@$core.Deprecated('Use errorDescriptor instead')
const Error_MessageEntry$json = const {
  '1': 'MessageEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Error`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List errorDescriptor = $convert.base64Decode(
    'CgVFcnJvchI3CgR0eXBlGAEgASgOMiMuY29tLmtyaXNweXBlbi53ZWF0aGVyLnYxLkVycm9yVHlwZVIEdHlwZRJGCgdtZXNzYWdlGAIgAygLMiwuY29tLmtyaXNweXBlbi53ZWF0aGVyLnYxLkVycm9yLk1lc3NhZ2VFbnRyeVIHbWVzc2FnZRo6CgxNZXNzYWdlRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use streamCurrentWeatherInfoRequestDescriptor instead')
const StreamCurrentWeatherInfoRequest$json = const {
  '1': 'StreamCurrentWeatherInfoRequest',
  '2': const [
    const {'1': 'location_id', '3': 1, '4': 1, '5': 9, '10': 'locationId'},
  ],
};

/// Descriptor for `StreamCurrentWeatherInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamCurrentWeatherInfoRequestDescriptor =
    $convert.base64Decode('Ch9TdHJlYW1DdXJyZW50V2VhdGhlckluZm9SZXF1ZXN0Eh8KC2xvY2F0aW9uX2lkGAEgASgJUgpsb2NhdGlvbklk');
@$core.Deprecated('Use streamCurrentWeatherInfoResponseDescriptor instead')
const StreamCurrentWeatherInfoResponse$json = const {
  '1': 'StreamCurrentWeatherInfoResponse',
  '2': const [
    const {
      '1': 'weather_info',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.com.krispypen.weather.v1.WeatherInfo',
      '9': 0,
      '10': 'weatherInfo'
    },
    const {'1': 'error', '3': 2, '4': 1, '5': 11, '6': '.com.krispypen.weather.v1.Error', '9': 0, '10': 'error'},
  ],
  '8': const [
    const {'1': 'main'},
  ],
};

/// Descriptor for `StreamCurrentWeatherInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List streamCurrentWeatherInfoResponseDescriptor = $convert.base64Decode(
    'CiBTdHJlYW1DdXJyZW50V2VhdGhlckluZm9SZXNwb25zZRJKCgx3ZWF0aGVyX2luZm8YASABKAsyJS5jb20ua3Jpc3B5cGVuLndlYXRoZXIudjEuV2VhdGhlckluZm9IAFILd2VhdGhlckluZm8SNwoFZXJyb3IYAiABKAsyHy5jb20ua3Jpc3B5cGVuLndlYXRoZXIudjEuRXJyb3JIAFIFZXJyb3JCBgoEbWFpbg==');
@$core.Deprecated('Use getLocationsRequestDescriptor instead')
const GetLocationsRequest$json = const {
  '1': 'GetLocationsRequest',
};

/// Descriptor for `GetLocationsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationsRequestDescriptor = $convert.base64Decode('ChNHZXRMb2NhdGlvbnNSZXF1ZXN0');
@$core.Deprecated('Use getLocationsResponseDescriptor instead')
const GetLocationsResponse$json = const {
  '1': 'GetLocationsResponse',
  '2': const [
    const {'1': 'locations', '3': 1, '4': 3, '5': 11, '6': '.com.krispypen.weather.v1.Location', '10': 'locations'},
  ],
};

/// Descriptor for `GetLocationsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getLocationsResponseDescriptor = $convert.base64Decode(
    'ChRHZXRMb2NhdGlvbnNSZXNwb25zZRJACglsb2NhdGlvbnMYASADKAsyIi5jb20ua3Jpc3B5cGVuLndlYXRoZXIudjEuTG9jYXRpb25SCWxvY2F0aW9ucw==');
@$core.Deprecated('Use locationDescriptor instead')
const Location$json = const {
  '1': 'Location',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 1, '10': 'name'},
  ],
};

/// Descriptor for `Location`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List locationDescriptor =
    $convert.base64Decode('CghMb2NhdGlvbhIOCgJpZBgBIAEoCVICaWQSEgoEbmFtZRgCIAEoAVIEbmFtZQ==');
