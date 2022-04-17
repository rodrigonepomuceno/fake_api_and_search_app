import 'package:get/get.dart';
import 'package:news_app/app/features/home/home_bindings.dart';
import 'package:news_app/app/features/home/home_page.dart';
import 'package:news_app/app/features/news_detail/news_detail_binding.dart';
import 'package:news_app/app/features/news_detail/news_detail_page.dart';

abstract class AppRoutes {
  static const splash = '/splash';
  static const home = '/home';
  static const newsDetail = '/news_detail';
}

class AppPages {
  static final pages = <GetPage>[
    GetPage(
      name: AppRoutes.home,
      page: () => const HomePage(),
      binding: HomeBindings(),
      transition: Transition.native,
    ),
    GetPage(
      name: AppRoutes.newsDetail,
      page: () => const NewsDetailPage(),
      binding: NewsDetailBindings(),
      transition: Transition.native,
    ),
  ];
}
