import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tinkoff_helper/common/loader/loader_controller.dart';
import 'package:tinkoff_helper/network/tinkoff_api_service.dart';

final GetIt getIt = GetIt.instance;

Future<void> initLocatorService() async {
  final prefs = await SharedPreferences.getInstance();
  getIt.registerSingleton<SharedPreferences>(prefs);
  getIt.registerSingleton<TinkoffApiService>(TinkoffApiService());
  getIt.registerSingleton<LoaderController>(LoaderController());
}
