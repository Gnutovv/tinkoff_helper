import 'package:grpc/grpc.dart';
import 'package:tinkoff_helper/network/generated/instruments.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/marketdata.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/operations.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/orders.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/sandbox.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/stoporders.pbgrpc.dart';
import 'package:tinkoff_helper/network/generated/users.pbgrpc.dart';
import 'package:tinkoff_helper/network/hosts.dart';

class TinkoffApiService {
  final String _baseUrl = TinkoffHosts.sandbox;
  final int _port = TinkoffHosts.port;
  final CallOptions callOptions = CallOptions(metadata: {'Authorization': 'Bearer '});
  late final InstrumentsServiceClient instrumentsServiceClient;
  late final MarketDataServiceClient marketDataServiceClient;
  late final OperationsServiceClient operationsServiceClient;
  late final OrdersServiceClient ordersServiceClient;
  late final SandboxServiceClient sandboxServiceClient;
  late final StopOrdersServiceClient stopOrdersServiceClient;
  late final UsersServiceClient usersServiceClient;

  void init() {
    final channel = ClientChannel(
      _baseUrl,
      port: _port,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    instrumentsServiceClient = InstrumentsServiceClient(channel);
    marketDataServiceClient = MarketDataServiceClient(channel);
    operationsServiceClient = OperationsServiceClient(channel);
    ordersServiceClient = OrdersServiceClient(channel);
    sandboxServiceClient = SandboxServiceClient(channel);
    stopOrdersServiceClient = StopOrdersServiceClient(channel);
    usersServiceClient = UsersServiceClient(channel);
  }
}
