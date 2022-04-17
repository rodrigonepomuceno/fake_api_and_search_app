import 'package:get/get.dart';
import 'package:news_app/app/core/bindings/core_bindings.dart';
import 'package:news_app/app/features/news/news_controller.dart';

class NewsBindings implements CoreBidings {
  @override
  void dependencies() {
    registerRepositories();
    registerControllers();
  }

  @override
  void registerRepositories() {}

  @override
  void registerControllers() {
    Get.lazyPut(() => NewsController(repository: Get.find()), fenix: true);
  }

  @override
  void registerDatasources() {}

  @override
  void registerCoreFeatures() {}
}
