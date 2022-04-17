import 'package:get/get.dart';
import 'package:news_app/app/core/repositories/news_repository/news_repository.dart';
import 'package:news_app/app/core/repositories/news_repository/news_repository_interface.dart';
import 'package:news_app/app/core/routes/app_pages.dart';
import 'package:news_app/app/features/home/home_controller.dart';
import 'package:news_app/app/core/bindings/core_bindings.dart';
import 'package:news_app/app/features/news/news_controller.dart';

class HomeBindings implements CoreBidings {
  @override
  void dependencies() {
    registerCoreFeatures();
    registerRepositories();
    registerControllers();
  }

  @override
  void registerRepositories() {
    Get.lazyPut<NewsRepositoryInterface>(
      () => NewsRepository(restiClient: Get.find()),
      fenix: true,
    );
  }

  @override
  void registerControllers() {
    Get.lazyPut(() => HomeController(), fenix: true);
    Get.lazyPut(() => NewsController(repository: Get.find()), fenix: true);
  }

  @override
  void registerDatasources() {}

  @override
  void registerCoreFeatures() {
    Get.put(AppPages(), permanent: true);
  }
}
