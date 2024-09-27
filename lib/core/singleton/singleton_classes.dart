import 'package:get_it/get_it.dart';
import 'package:leads/infrastructure/datasources/local/shared_pref/shared_pref.dart';
import 'package:leads/infrastructure/datasources/remote/dio_api_service/dio_api_service.dart';

final locator = GetIt.instance;

setupDependency() async {
  locator
    ..registerSingleton<SharedPref>(SharedPref())
    ..registerLazySingleton<DioApiService>(() => DioApiService());
  

  return true;
}