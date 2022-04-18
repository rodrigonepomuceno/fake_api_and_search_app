import 'package:get/get.dart';
import 'package:news_app/app/features/favorites/favorite_controller.dart';

class HomeController extends GetxController {
  var pageIndex = 0.obs;

  setCurrentPage(int index) {
    switch (index) {
      case 1:
        Get.find<FavoriteController>().fetchFavorites();
        break;
      default:
    }
    pageIndex.value = index;
  }
}
