import 'package:get/instance_manager.dart';

abstract class CoreBidings implements Bindings {
  @override
  void dependencies();

  void registerControllers();

  void registerCoreFeatures();

  void registerDatasources();

  void registerRepositories();
}
