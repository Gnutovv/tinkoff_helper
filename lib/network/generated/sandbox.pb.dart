///
//  Generated code. Do not modify.
//  source: sandbox.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'common.pb.dart' as $8;

class OpenSandboxAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenSandboxAccountRequest',
      package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'tinkoff.public.invest.api.contract.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  OpenSandboxAccountRequest._() : super();
  factory OpenSandboxAccountRequest() => create();
  factory OpenSandboxAccountRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpenSandboxAccountRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpenSandboxAccountRequest clone() => OpenSandboxAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpenSandboxAccountRequest copyWith(void Function(OpenSandboxAccountRequest) updates) =>
      super.copyWith((message) => updates(message as OpenSandboxAccountRequest))
          as OpenSandboxAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenSandboxAccountRequest create() => OpenSandboxAccountRequest._();
  OpenSandboxAccountRequest createEmptyInstance() => create();
  static $pb.PbList<OpenSandboxAccountRequest> createRepeated() => $pb.PbList<OpenSandboxAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static OpenSandboxAccountRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenSandboxAccountRequest>(create);
  static OpenSandboxAccountRequest? _defaultInstance;
}

class OpenSandboxAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenSandboxAccountResponse',
      package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'tinkoff.public.invest.api.contract.v1'),
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..hasRequiredFields = false;

  OpenSandboxAccountResponse._() : super();
  factory OpenSandboxAccountResponse({
    $core.String? accountId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory OpenSandboxAccountResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpenSandboxAccountResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  OpenSandboxAccountResponse clone() => OpenSandboxAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  OpenSandboxAccountResponse copyWith(void Function(OpenSandboxAccountResponse) updates) =>
      super.copyWith((message) => updates(message as OpenSandboxAccountResponse))
          as OpenSandboxAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenSandboxAccountResponse create() => OpenSandboxAccountResponse._();
  OpenSandboxAccountResponse createEmptyInstance() => create();
  static $pb.PbList<OpenSandboxAccountResponse> createRepeated() => $pb.PbList<OpenSandboxAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static OpenSandboxAccountResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenSandboxAccountResponse>(create);
  static OpenSandboxAccountResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class CloseSandboxAccountRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CloseSandboxAccountRequest',
      package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'tinkoff.public.invest.api.contract.v1'),
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..hasRequiredFields = false;

  CloseSandboxAccountRequest._() : super();
  factory CloseSandboxAccountRequest({
    $core.String? accountId,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    return _result;
  }
  factory CloseSandboxAccountRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseSandboxAccountRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CloseSandboxAccountRequest clone() => CloseSandboxAccountRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CloseSandboxAccountRequest copyWith(void Function(CloseSandboxAccountRequest) updates) =>
      super.copyWith((message) => updates(message as CloseSandboxAccountRequest))
          as CloseSandboxAccountRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CloseSandboxAccountRequest create() => CloseSandboxAccountRequest._();
  CloseSandboxAccountRequest createEmptyInstance() => create();
  static $pb.PbList<CloseSandboxAccountRequest> createRepeated() => $pb.PbList<CloseSandboxAccountRequest>();
  @$core.pragma('dart2js:noInline')
  static CloseSandboxAccountRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CloseSandboxAccountRequest>(create);
  static CloseSandboxAccountRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);
}

class CloseSandboxAccountResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CloseSandboxAccountResponse',
      package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'tinkoff.public.invest.api.contract.v1'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  CloseSandboxAccountResponse._() : super();
  factory CloseSandboxAccountResponse() => create();
  factory CloseSandboxAccountResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseSandboxAccountResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CloseSandboxAccountResponse clone() => CloseSandboxAccountResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CloseSandboxAccountResponse copyWith(void Function(CloseSandboxAccountResponse) updates) =>
      super.copyWith((message) => updates(message as CloseSandboxAccountResponse))
          as CloseSandboxAccountResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CloseSandboxAccountResponse create() => CloseSandboxAccountResponse._();
  CloseSandboxAccountResponse createEmptyInstance() => create();
  static $pb.PbList<CloseSandboxAccountResponse> createRepeated() => $pb.PbList<CloseSandboxAccountResponse>();
  @$core.pragma('dart2js:noInline')
  static CloseSandboxAccountResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CloseSandboxAccountResponse>(create);
  static CloseSandboxAccountResponse? _defaultInstance;
}

class SandboxPayInRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SandboxPayInRequest',
      package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'tinkoff.public.invest.api.contract.v1'),
      createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accountId')
    ..aOM<$8.MoneyValue>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount',
        subBuilder: $8.MoneyValue.create)
    ..hasRequiredFields = false;

  SandboxPayInRequest._() : super();
  factory SandboxPayInRequest({
    $core.String? accountId,
    $8.MoneyValue? amount,
  }) {
    final _result = create();
    if (accountId != null) {
      _result.accountId = accountId;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    return _result;
  }
  factory SandboxPayInRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SandboxPayInRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SandboxPayInRequest clone() => SandboxPayInRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SandboxPayInRequest copyWith(void Function(SandboxPayInRequest) updates) =>
      super.copyWith((message) => updates(message as SandboxPayInRequest))
          as SandboxPayInRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SandboxPayInRequest create() => SandboxPayInRequest._();
  SandboxPayInRequest createEmptyInstance() => create();
  static $pb.PbList<SandboxPayInRequest> createRepeated() => $pb.PbList<SandboxPayInRequest>();
  @$core.pragma('dart2js:noInline')
  static SandboxPayInRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SandboxPayInRequest>(create);
  static SandboxPayInRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $8.MoneyValue get amount => $_getN(1);
  @$pb.TagNumber(2)
  set amount($8.MoneyValue v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);
  @$pb.TagNumber(2)
  $8.MoneyValue ensureAmount() => $_ensure(1);
}

class SandboxPayInResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SandboxPayInResponse',
      package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'tinkoff.public.invest.api.contract.v1'),
      createEmptyInstance: create)
    ..aOM<$8.MoneyValue>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance',
        subBuilder: $8.MoneyValue.create)
    ..hasRequiredFields = false;

  SandboxPayInResponse._() : super();
  factory SandboxPayInResponse({
    $8.MoneyValue? balance,
  }) {
    final _result = create();
    if (balance != null) {
      _result.balance = balance;
    }
    return _result;
  }
  factory SandboxPayInResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SandboxPayInResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  SandboxPayInResponse clone() => SandboxPayInResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  SandboxPayInResponse copyWith(void Function(SandboxPayInResponse) updates) =>
      super.copyWith((message) => updates(message as SandboxPayInResponse))
          as SandboxPayInResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SandboxPayInResponse create() => SandboxPayInResponse._();
  SandboxPayInResponse createEmptyInstance() => create();
  static $pb.PbList<SandboxPayInResponse> createRepeated() => $pb.PbList<SandboxPayInResponse>();
  @$core.pragma('dart2js:noInline')
  static SandboxPayInResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SandboxPayInResponse>(create);
  static SandboxPayInResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $8.MoneyValue get balance => $_getN(0);
  @$pb.TagNumber(1)
  set balance($8.MoneyValue v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);
  @$pb.TagNumber(1)
  $8.MoneyValue ensureBalance() => $_ensure(0);
}
