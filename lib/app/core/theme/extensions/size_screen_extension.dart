import 'package:get/get.dart';

extension SizeScreenExtenson on num {
  double get sw => Get.width * this;
  double get sh => Get.height * this;
  double get statusBarHeight => Get.mediaQuery.padding.top;
}
