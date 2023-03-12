///
//  Generated code. Do not modify.
//  source: sandbox.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'sandbox.pb.dart' as $5;
import 'users.pb.dart' as $4;
import 'orders.pb.dart' as $3;
import 'operations.pb.dart' as $2;
export 'sandbox.pb.dart';

class SandboxServiceClient extends $grpc.Client {
  static final _$openSandboxAccount = $grpc.ClientMethod<$5.OpenSandboxAccountRequest, $5.OpenSandboxAccountResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/OpenSandboxAccount',
      ($5.OpenSandboxAccountRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.OpenSandboxAccountResponse.fromBuffer(value));
  static final _$getSandboxAccounts = $grpc.ClientMethod<$4.GetAccountsRequest, $4.GetAccountsResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxAccounts',
      ($4.GetAccountsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $4.GetAccountsResponse.fromBuffer(value));
  static final _$closeSandboxAccount =
      $grpc.ClientMethod<$5.CloseSandboxAccountRequest, $5.CloseSandboxAccountResponse>(
          '/tinkoff.public.invest.api.contract.v1.SandboxService/CloseSandboxAccount',
          ($5.CloseSandboxAccountRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $5.CloseSandboxAccountResponse.fromBuffer(value));
  static final _$postSandboxOrder = $grpc.ClientMethod<$3.PostOrderRequest, $3.PostOrderResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/PostSandboxOrder',
      ($3.PostOrderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PostOrderResponse.fromBuffer(value));
  static final _$replaceSandboxOrder = $grpc.ClientMethod<$3.ReplaceOrderRequest, $3.PostOrderResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/ReplaceSandboxOrder',
      ($3.ReplaceOrderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.PostOrderResponse.fromBuffer(value));
  static final _$getSandboxOrders = $grpc.ClientMethod<$3.GetOrdersRequest, $3.GetOrdersResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOrders',
      ($3.GetOrdersRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.GetOrdersResponse.fromBuffer(value));
  static final _$cancelSandboxOrder = $grpc.ClientMethod<$3.CancelOrderRequest, $3.CancelOrderResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/CancelSandboxOrder',
      ($3.CancelOrderRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.CancelOrderResponse.fromBuffer(value));
  static final _$getSandboxOrderState = $grpc.ClientMethod<$3.GetOrderStateRequest, $3.OrderState>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOrderState',
      ($3.GetOrderStateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $3.OrderState.fromBuffer(value));
  static final _$getSandboxPositions = $grpc.ClientMethod<$2.PositionsRequest, $2.PositionsResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxPositions',
      ($2.PositionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PositionsResponse.fromBuffer(value));
  static final _$getSandboxOperations = $grpc.ClientMethod<$2.OperationsRequest, $2.OperationsResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOperations',
      ($2.OperationsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.OperationsResponse.fromBuffer(value));
  static final _$getSandboxOperationsByCursor =
      $grpc.ClientMethod<$2.GetOperationsByCursorRequest, $2.GetOperationsByCursorResponse>(
          '/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxOperationsByCursor',
          ($2.GetOperationsByCursorRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.GetOperationsByCursorResponse.fromBuffer(value));
  static final _$getSandboxPortfolio = $grpc.ClientMethod<$2.PortfolioRequest, $2.PortfolioResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxPortfolio',
      ($2.PortfolioRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.PortfolioResponse.fromBuffer(value));
  static final _$sandboxPayIn = $grpc.ClientMethod<$5.SandboxPayInRequest, $5.SandboxPayInResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/SandboxPayIn',
      ($5.SandboxPayInRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $5.SandboxPayInResponse.fromBuffer(value));
  static final _$getSandboxWithdrawLimits = $grpc.ClientMethod<$2.WithdrawLimitsRequest, $2.WithdrawLimitsResponse>(
      '/tinkoff.public.invest.api.contract.v1.SandboxService/GetSandboxWithdrawLimits',
      ($2.WithdrawLimitsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.WithdrawLimitsResponse.fromBuffer(value));

  SandboxServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options, $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.OpenSandboxAccountResponse> openSandboxAccount($5.OpenSandboxAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$openSandboxAccount, request, options: options);
  }

  $grpc.ResponseFuture<$4.GetAccountsResponse> getSandboxAccounts($4.GetAccountsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSandboxAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$5.CloseSandboxAccountResponse> closeSandboxAccount($5.CloseSandboxAccountRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$closeSandboxAccount, request, options: options);
  }

  $grpc.ResponseFuture<$3.PostOrderResponse> postSandboxOrder($3.PostOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$postSandboxOrder, request, options: options);
  }

  $grpc.ResponseFuture<$3.PostOrderResponse> replaceSandboxOrder($3.ReplaceOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$replaceSandboxOrder, request, options: options);
  }

  $grpc.ResponseFuture<$3.GetOrdersResponse> getSandboxOrders($3.GetOrdersRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSandboxOrders, request, options: options);
  }

  $grpc.ResponseFuture<$3.CancelOrderResponse> cancelSandboxOrder($3.CancelOrderRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$cancelSandboxOrder, request, options: options);
  }

  $grpc.ResponseFuture<$3.OrderState> getSandboxOrderState($3.GetOrderStateRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSandboxOrderState, request, options: options);
  }

  $grpc.ResponseFuture<$2.PositionsResponse> getSandboxPositions($2.PositionsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSandboxPositions, request, options: options);
  }

  $grpc.ResponseFuture<$2.OperationsResponse> getSandboxOperations($2.OperationsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSandboxOperations, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetOperationsByCursorResponse> getSandboxOperationsByCursor(
      $2.GetOperationsByCursorRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSandboxOperationsByCursor, request, options: options);
  }

  $grpc.ResponseFuture<$2.PortfolioResponse> getSandboxPortfolio($2.PortfolioRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSandboxPortfolio, request, options: options);
  }

  $grpc.ResponseFuture<$5.SandboxPayInResponse> sandboxPayIn($5.SandboxPayInRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$sandboxPayIn, request, options: options);
  }

  $grpc.ResponseFuture<$2.WithdrawLimitsResponse> getSandboxWithdrawLimits($2.WithdrawLimitsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getSandboxWithdrawLimits, request, options: options);
  }
}

abstract class SandboxServiceBase extends $grpc.Service {
  $core.String get $name => 'tinkoff.public.invest.api.contract.v1.SandboxService';

  SandboxServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.OpenSandboxAccountRequest, $5.OpenSandboxAccountResponse>(
        'OpenSandboxAccount',
        openSandboxAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.OpenSandboxAccountRequest.fromBuffer(value),
        ($5.OpenSandboxAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetAccountsRequest, $4.GetAccountsResponse>(
        'GetSandboxAccounts',
        getSandboxAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $4.GetAccountsRequest.fromBuffer(value),
        ($4.GetAccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CloseSandboxAccountRequest, $5.CloseSandboxAccountResponse>(
        'CloseSandboxAccount',
        closeSandboxAccount_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.CloseSandboxAccountRequest.fromBuffer(value),
        ($5.CloseSandboxAccountResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.PostOrderRequest, $3.PostOrderResponse>(
        'PostSandboxOrder',
        postSandboxOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.PostOrderRequest.fromBuffer(value),
        ($3.PostOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.ReplaceOrderRequest, $3.PostOrderResponse>(
        'ReplaceSandboxOrder',
        replaceSandboxOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ReplaceOrderRequest.fromBuffer(value),
        ($3.PostOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetOrdersRequest, $3.GetOrdersResponse>(
        'GetSandboxOrders',
        getSandboxOrders_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetOrdersRequest.fromBuffer(value),
        ($3.GetOrdersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CancelOrderRequest, $3.CancelOrderResponse>(
        'CancelSandboxOrder',
        cancelSandboxOrder_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CancelOrderRequest.fromBuffer(value),
        ($3.CancelOrderResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetOrderStateRequest, $3.OrderState>(
        'GetSandboxOrderState',
        getSandboxOrderState_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetOrderStateRequest.fromBuffer(value),
        ($3.OrderState value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PositionsRequest, $2.PositionsResponse>(
        'GetSandboxPositions',
        getSandboxPositions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PositionsRequest.fromBuffer(value),
        ($2.PositionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.OperationsRequest, $2.OperationsResponse>(
        'GetSandboxOperations',
        getSandboxOperations_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.OperationsRequest.fromBuffer(value),
        ($2.OperationsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetOperationsByCursorRequest, $2.GetOperationsByCursorResponse>(
        'GetSandboxOperationsByCursor',
        getSandboxOperationsByCursor_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetOperationsByCursorRequest.fromBuffer(value),
        ($2.GetOperationsByCursorResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.PortfolioRequest, $2.PortfolioResponse>(
        'GetSandboxPortfolio',
        getSandboxPortfolio_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.PortfolioRequest.fromBuffer(value),
        ($2.PortfolioResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.SandboxPayInRequest, $5.SandboxPayInResponse>(
        'SandboxPayIn',
        sandboxPayIn_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.SandboxPayInRequest.fromBuffer(value),
        ($5.SandboxPayInResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.WithdrawLimitsRequest, $2.WithdrawLimitsResponse>(
        'GetSandboxWithdrawLimits',
        getSandboxWithdrawLimits_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.WithdrawLimitsRequest.fromBuffer(value),
        ($2.WithdrawLimitsResponse value) => value.writeToBuffer()));
  }

  $async.Future<$5.OpenSandboxAccountResponse> openSandboxAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$5.OpenSandboxAccountRequest> request) async {
    return openSandboxAccount(call, await request);
  }

  $async.Future<$4.GetAccountsResponse> getSandboxAccounts_Pre(
      $grpc.ServiceCall call, $async.Future<$4.GetAccountsRequest> request) async {
    return getSandboxAccounts(call, await request);
  }

  $async.Future<$5.CloseSandboxAccountResponse> closeSandboxAccount_Pre(
      $grpc.ServiceCall call, $async.Future<$5.CloseSandboxAccountRequest> request) async {
    return closeSandboxAccount(call, await request);
  }

  $async.Future<$3.PostOrderResponse> postSandboxOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$3.PostOrderRequest> request) async {
    return postSandboxOrder(call, await request);
  }

  $async.Future<$3.PostOrderResponse> replaceSandboxOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$3.ReplaceOrderRequest> request) async {
    return replaceSandboxOrder(call, await request);
  }

  $async.Future<$3.GetOrdersResponse> getSandboxOrders_Pre(
      $grpc.ServiceCall call, $async.Future<$3.GetOrdersRequest> request) async {
    return getSandboxOrders(call, await request);
  }

  $async.Future<$3.CancelOrderResponse> cancelSandboxOrder_Pre(
      $grpc.ServiceCall call, $async.Future<$3.CancelOrderRequest> request) async {
    return cancelSandboxOrder(call, await request);
  }

  $async.Future<$3.OrderState> getSandboxOrderState_Pre(
      $grpc.ServiceCall call, $async.Future<$3.GetOrderStateRequest> request) async {
    return getSandboxOrderState(call, await request);
  }

  $async.Future<$2.PositionsResponse> getSandboxPositions_Pre(
      $grpc.ServiceCall call, $async.Future<$2.PositionsRequest> request) async {
    return getSandboxPositions(call, await request);
  }

  $async.Future<$2.OperationsResponse> getSandboxOperations_Pre(
      $grpc.ServiceCall call, $async.Future<$2.OperationsRequest> request) async {
    return getSandboxOperations(call, await request);
  }

  $async.Future<$2.GetOperationsByCursorResponse> getSandboxOperationsByCursor_Pre(
      $grpc.ServiceCall call, $async.Future<$2.GetOperationsByCursorRequest> request) async {
    return getSandboxOperationsByCursor(call, await request);
  }

  $async.Future<$2.PortfolioResponse> getSandboxPortfolio_Pre(
      $grpc.ServiceCall call, $async.Future<$2.PortfolioRequest> request) async {
    return getSandboxPortfolio(call, await request);
  }

  $async.Future<$5.SandboxPayInResponse> sandboxPayIn_Pre(
      $grpc.ServiceCall call, $async.Future<$5.SandboxPayInRequest> request) async {
    return sandboxPayIn(call, await request);
  }

  $async.Future<$2.WithdrawLimitsResponse> getSandboxWithdrawLimits_Pre(
      $grpc.ServiceCall call, $async.Future<$2.WithdrawLimitsRequest> request) async {
    return getSandboxWithdrawLimits(call, await request);
  }

  $async.Future<$5.OpenSandboxAccountResponse> openSandboxAccount(
      $grpc.ServiceCall call, $5.OpenSandboxAccountRequest request);
  $async.Future<$4.GetAccountsResponse> getSandboxAccounts($grpc.ServiceCall call, $4.GetAccountsRequest request);
  $async.Future<$5.CloseSandboxAccountResponse> closeSandboxAccount(
      $grpc.ServiceCall call, $5.CloseSandboxAccountRequest request);
  $async.Future<$3.PostOrderResponse> postSandboxOrder($grpc.ServiceCall call, $3.PostOrderRequest request);
  $async.Future<$3.PostOrderResponse> replaceSandboxOrder($grpc.ServiceCall call, $3.ReplaceOrderRequest request);
  $async.Future<$3.GetOrdersResponse> getSandboxOrders($grpc.ServiceCall call, $3.GetOrdersRequest request);
  $async.Future<$3.CancelOrderResponse> cancelSandboxOrder($grpc.ServiceCall call, $3.CancelOrderRequest request);
  $async.Future<$3.OrderState> getSandboxOrderState($grpc.ServiceCall call, $3.GetOrderStateRequest request);
  $async.Future<$2.PositionsResponse> getSandboxPositions($grpc.ServiceCall call, $2.PositionsRequest request);
  $async.Future<$2.OperationsResponse> getSandboxOperations($grpc.ServiceCall call, $2.OperationsRequest request);
  $async.Future<$2.GetOperationsByCursorResponse> getSandboxOperationsByCursor(
      $grpc.ServiceCall call, $2.GetOperationsByCursorRequest request);
  $async.Future<$2.PortfolioResponse> getSandboxPortfolio($grpc.ServiceCall call, $2.PortfolioRequest request);
  $async.Future<$5.SandboxPayInResponse> sandboxPayIn($grpc.ServiceCall call, $5.SandboxPayInRequest request);
  $async.Future<$2.WithdrawLimitsResponse> getSandboxWithdrawLimits(
      $grpc.ServiceCall call, $2.WithdrawLimitsRequest request);
}
