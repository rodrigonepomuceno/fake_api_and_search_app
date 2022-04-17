import 'package:get/get.dart';
import 'package:news_app/app/core/bindings/core_bindings.dart';
import 'package:news_app/app/features/news_detail/news_detail_controller.dart';

class NewsDetailBindings implements CoreBidings {
  @override
  void dependencies() {
    registerRepositories();
    registerControllers();
  }

  @override
  void registerRepositories() {}

  @override
  void registerControllers() {
    Get.lazyPut(() => NewsDetailController(), fenix: true);
  }

  @override
  void registerDatasources() {}

  @override
  void registerCoreFeatures() {}
}
