import 'package:grpc/grpc.dart';
import 'package:tinkoff_helper/di/di.dart';
import 'package:tinkoff_helper/network/generated/instruments.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/marketdata.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/operations.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/orders.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/sandbox.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/stoporders.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/users.pbgrpc.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

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

  CallOptions get callOptions => _callOptions;

  void init() {
    updateCallOptions(getIt<HiveStorage>().apiKey);
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
    _channel = ClientChannel(
      TinkoffHosts.prod,
      port: TinkoffHosts.port,
    );
  }
}

class TinkoffHosts {
  static const sandbox = 'sandbox-invest-public-api.tinkoff.ru';
  static const prod = 'invest-public-api.tinkoff.ru';
  static const port = 443;
}
