import 'package:get/get.dart';

class HomeController extends GetxController {
  var pageIndex = 0.obs;

  setCurrentPage(int index) {
    pageIndex.value = index;
  }
}
