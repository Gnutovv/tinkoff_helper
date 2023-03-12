///
//  Generated code. Do not modify.
//  source: sandbox.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use openSandboxAccountRequestDescriptor instead')
const OpenSandboxAccountRequest$json = const {
  '1': 'OpenSandboxAccountRequest',
};

/// Descriptor for `OpenSandboxAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openSandboxAccountRequestDescriptor =
    $convert.base64Decode('ChlPcGVuU2FuZGJveEFjY291bnRSZXF1ZXN0');
@$core.Deprecated('Use openSandboxAccountResponseDescriptor instead')
const OpenSandboxAccountResponse$json = const {
  '1': 'OpenSandboxAccountResponse',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `OpenSandboxAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openSandboxAccountResponseDescriptor =
    $convert.base64Decode('ChpPcGVuU2FuZGJveEFjY291bnRSZXNwb25zZRIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQ=');
@$core.Deprecated('Use closeSandboxAccountRequestDescriptor instead')
const CloseSandboxAccountRequest$json = const {
  '1': 'CloseSandboxAccountRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

/// Descriptor for `CloseSandboxAccountRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeSandboxAccountRequestDescriptor =
    $convert.base64Decode('ChpDbG9zZVNhbmRib3hBY2NvdW50UmVxdWVzdBIdCgphY2NvdW50X2lkGAEgASgJUglhY2NvdW50SWQ=');
@$core.Deprecated('Use closeSandboxAccountResponseDescriptor instead')
const CloseSandboxAccountResponse$json = const {
  '1': 'CloseSandboxAccountResponse',
};

/// Descriptor for `CloseSandboxAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeSandboxAccountResponseDescriptor =
    $convert.base64Decode('ChtDbG9zZVNhbmRib3hBY2NvdW50UmVzcG9uc2U=');
@$core.Deprecated('Use sandboxPayInRequestDescriptor instead')
const SandboxPayInRequest$json = const {
  '1': 'SandboxPayInRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    const {
      '1': 'amount',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.tinkoff.public.invest.api.contract.v1.MoneyValue',
      '10': 'amount'
    },
  ],
};

/// Descriptor for `SandboxPayInRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxPayInRequestDescriptor = $convert.base64Decode(
    'ChNTYW5kYm94UGF5SW5SZXF1ZXN0Eh0KCmFjY291bnRfaWQYASABKAlSCWFjY291bnRJZBJJCgZhbW91bnQYAiABKAsyMS50aW5rb2ZmLnB1YmxpYy5pbnZlc3QuYXBpLmNvbnRyYWN0LnYxLk1vbmV5VmFsdWVSBmFtb3VudA==');
@$core.Deprecated('Use sandboxPayInResponseDescriptor instead')
const SandboxPayInResponse$json = const {
  '1': 'SandboxPayInResponse',
  '2': const [
    const {
      '1': 'balance',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.tinkoff.public.invest.api.contract.v1.MoneyValue',
      '10': 'balance'
    },
  ],
};

/// Descriptor for `SandboxPayInResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sandboxPayInResponseDescriptor = $convert.base64Decode(
    'ChRTYW5kYm94UGF5SW5SZXNwb25zZRJLCgdiYWxhbmNlGAEgASgLMjEudGlua29mZi5wdWJsaWMuaW52ZXN0LmFwaS5jb250cmFjdC52MS5Nb25leVZhbHVlUgdiYWxhbmNl');
