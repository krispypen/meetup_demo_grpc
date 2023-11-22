///
//  Generated code. Do not modify.
//  source: com/krispypen/weather/v1/weather.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class ErrorType extends $pb.ProtobufEnum {
  static const ErrorType ERROR_TYPE_UNSPECIFIED =
      ErrorType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR_TYPE_UNSPECIFIED');
  static const ErrorType ERROR_TYPE_NOTFOUND =
      ErrorType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR_TYPE_NOTFOUND');
  static const ErrorType ERROR_TYPE_PERMISSION_DENIED = ErrorType._(
      2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR_TYPE_PERMISSION_DENIED');
  static const ErrorType ERROR_TYPE_BACKEND_GONE =
      ErrorType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR_TYPE_BACKEND_GONE');
  static const ErrorType ERROR_TYPE_TOKEN_EXPIRED =
      ErrorType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR_TYPE_TOKEN_EXPIRED');
  static const ErrorType ERROR_TYPE_RATE_LIMITED =
      ErrorType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ERROR_TYPE_RATE_LIMITED');

  static const $core.List<ErrorType> values = <ErrorType>[
    ERROR_TYPE_UNSPECIFIED,
    ERROR_TYPE_NOTFOUND,
    ERROR_TYPE_PERMISSION_DENIED,
    ERROR_TYPE_BACKEND_GONE,
    ERROR_TYPE_TOKEN_EXPIRED,
    ERROR_TYPE_RATE_LIMITED,
  ];

  static final $core.Map<$core.int, ErrorType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ErrorType? valueOf($core.int value) => _byValue[value];

  const ErrorType._($core.int v, $core.String n) : super(v, n);
}
