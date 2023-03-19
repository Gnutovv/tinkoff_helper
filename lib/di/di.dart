import 'package:get_it/get_it.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/domain/expert/user_account.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';

import '../storage/hive_storage.dart';

final GetIt getIt = GetIt.instance;

void initLocatorService() {
  getIt.registerSingleton<LoaderController>(LoaderController());
  getIt.registerSingleton<TinkoffApiService>(TinkoffApiService());
  getIt.registerSingleton<HiveStorage>(HiveStorage());
}

UserAccount? userAccount;
