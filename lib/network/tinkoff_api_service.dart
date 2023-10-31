import 'package:grpc/grpc.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/network/generated/instruments.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/marketdata.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/operations.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/orders.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/sandbox.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/stoporders.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/users.pbgrpc.dart';
import 'package:tinkoff_helper/storage/secure_storage.dart';

class TinkoffApiService {
  late ClientChannel _channel;
  late CallOptions _callOptions;
  late final InstrumentsServiceClient instrumentsServiceClient;
  late final MarketDataServiceClient marketDataServiceClient;
  late final OperationsServiceClient operationsServiceClient;
  late final OrdersServiceClient ordersServiceClient;
  late final SandboxServiceClient sandboxServiceClient;
  late final StopOrdersServiceClient stopOrdersServiceClient;
  late final UsersServiceClient usersServiceClient;
  String? _accountId;
  String? _accountName;

  CallOptions get callOptions => _callOptions;

  String get accountId => _accountId ?? '';

  String get accountName => _accountName ?? '';

  void updateAccountData(Account account) {
    _accountId = account.id;
    _accountName = account.name;
  }

  void init() {
    updateCallOptions(getIt<SecureStorage>().key);
    _channel = ClientChannel(_TinkoffHosts.prod, port: _TinkoffHosts.port);
    instrumentsServiceClient = InstrumentsServiceClient(_channel);
    marketDataServiceClient = MarketDataServiceClient(_channel);
    operationsServiceClient = OperationsServiceClient(_channel);
    ordersServiceClient = OrdersServiceClient(_channel);
    sandboxServiceClient = SandboxServiceClient(_channel);
    stopOrdersServiceClient = StopOrdersServiceClient(_channel);
    usersServiceClient = UsersServiceClient(_channel);
  }

  void updateCallOptions(String apiKey) {
    _callOptions = CallOptions(metadata: {'Authorization': 'Bearer $apiKey'});
  }
}

class _TinkoffHosts {
  static const prod = 'invest-public-api.tinkoff.ru';
  static const port = 443;
}
