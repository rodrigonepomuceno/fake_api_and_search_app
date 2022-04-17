import 'package:get/get.dart';
import 'package:news_app/app/core/bindings/core_bindings.dart';
import 'package:news_app/app/core/helper/loggers/logger.dart';
import 'package:news_app/app/core/rest_client/dio_request_client.dart';
import 'package:news_app/app/core/rest_client/rest_client.dart';

class MainBindings implements CoreBidings {
  @override
  void dependencies() {
    registerCoreFeatures();
    registerRepositories();
    registerControllers();
    registerDatasources();
  }

  @override
  registerCoreFeatures() {
    Get.put<ILogger>(NewsdLogger(), permanent: true);
    Get.put<RestClient>(DioRequestClient(), permanent: true);
  }

  @override
  void registerDatasources() {}

  @override
  void registerRepositories() {}

  @override
  void registerControllers() {}
}
