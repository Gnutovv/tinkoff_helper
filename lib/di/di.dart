import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/firebase_options.dart';
import 'package:tinkoff_helper/network/firebase_api.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';
import 'package:tinkoff_helper/storage/hive_storage.dart';
import 'package:tinkoff_helper/storage/secure_storage.dart';

final GetIt getIt = GetIt.instance;

void initDIService() {
  getIt.registerSingleton<LoaderController>(LoaderController());
  getIt.registerSingleton<TinkoffApiService>(TinkoffApiService());
  getIt.registerSingleton<HiveStorage>(HiveStorage());
  getIt.registerSingleton<FirebaseApi>(FirebaseApi());
  getIt.registerSingleton<SecureStorage>(SecureStorage());
}

Future<void> initServices() async {
  await getIt<HiveStorage>().init();
  await getIt<SecureStorage>().init();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  getIt<FirebaseApi>().init();
  getIt<TinkoffApiService>().init();
}
