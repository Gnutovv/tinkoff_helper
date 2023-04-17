import 'package:get_it/get_it.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';

final GetIt getIt = GetIt.instance;

void initDIService() {
  getIt.registerSingleton<LoaderController>(LoaderController());
  getIt.registerSingleton<TinkoffApiService>(TinkoffApiService());
  getIt.registerSingleton<HiveStorage>(HiveStorage());
}
