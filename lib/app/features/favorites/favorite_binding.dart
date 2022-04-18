import 'package:get/get.dart';
import 'package:news_app/app/core/bindings/core_bindings.dart';
import 'package:news_app/app/features/favorites/favorite_controller.dart';

class FavoriteBindings implements CoreBidings {
  @override
  void dependencies() {
    registerRepositories();
    registerControllers();
  }

  @override
  void registerRepositories() {}

  @override
  void registerControllers() {
    Get.lazyPut(() => FavoriteController(repository: Get.find()), fenix: true);
  }

  @override
  void registerDatasources() {}

  @override
  void registerCoreFeatures() {}
}
