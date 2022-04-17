import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/features/favorites/favorite_page.dart';
import 'package:news_app/app/features/home/home_controller.dart';
import 'package:news_app/app/features/news/news_page.dart';
import 'package:news_app/app/features/profile/profile_page.dart';
import 'package:news_app/app/features/store/store_page.dart';
import 'package:news_app/app/core/theme/app_theme.dart';
import 'package:news_app/app/core/widgets/app_horizontal_divider/app_horizontal_divider_component.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Obx(
        () => SafeArea(
          top: false,
          child: Scaffold(
            resizeToAvoidBottomInset: true,
            bottomNavigationBar: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                AppHorizontalDivider(backgroundColor: AppThemes.instance.colors.grey3, thickness: 1),
                const SizedBox(height: 4),
                Container(
                  constraints: const BoxConstraints(maxHeight: 70),
                  child: Theme(
                    data: ThemeData(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                    ),
                    child: BottomNavigationBar(
                      elevation: 0,
                      type: BottomNavigationBarType.fixed,
                      backgroundColor: Colors.white,
                      selectedItemColor: Colors.black,
                      currentIndex: controller.pageIndex.value,
                      onTap: controller.setCurrentPage,
                      showSelectedLabels: false,
                      showUnselectedLabels: false,
                      items: [
                        BottomNavigationBarItem(
                          activeIcon: Image.asset(
                            'assets/icons/menu1.png',
                            color: AppThemes.instance.colors.blueDefault,
                            height: 34,
                            width: 28,
                            fit: BoxFit.fitWidth,
                          ),
                          icon: Image.asset(
                            'assets/icons/menu1.png',
                            color: AppThemes.instance.colors.grey2,
                            height: 34,
                            width: 28,
                            fit: BoxFit.fitWidth,
                          ),
                          label: '',
                        ),
                        BottomNavigationBarItem(
                          activeIcon: Image.asset(
                            'assets/icons/menu2.png',
                            color: AppThemes.instance.colors.blueDefault,
                            height: 30,
                            width: 24,
                            fit: BoxFit.fitWidth,
                          ),
                          icon: Image.asset(
                            'assets/icons/menu2.png',
                            color: AppThemes.instance.colors.grey2,
                            height: 30,
                            width: 24,
                            fit: BoxFit.fitWidth,
                          ),
                          label: '',
                        ),
                        BottomNavigationBarItem(
                          activeIcon: Image.asset(
                            'assets/icons/menu3.png',
                            color: AppThemes.instance.colors.blueDefault,
                            height: 30,
                            width: 24,
                            fit: BoxFit.fitWidth,
                          ),
                          icon: Image.asset(
                            'assets/icons/menu3.png',
                            color: AppThemes.instance.colors.grey2,
                            height: 30,
                            width: 24,
                            fit: BoxFit.fitWidth,
                          ),
                          label: '',
                        ),
                        BottomNavigationBarItem(
                          activeIcon: Image.asset(
                            'assets/icons/menu4.png',
                            color: AppThemes.instance.colors.blueDefault,
                            height: 30,
                            width: 24,
                            fit: BoxFit.fitWidth,
                          ),
                          icon: Image.asset(
                            'assets/icons/menu4.png',
                            color: AppThemes.instance.colors.grey2,
                            height: 30,
                            width: 24,
                            fit: BoxFit.fitWidth,
                          ),
                          label: '',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            body: IndexedStack(
              index: controller.pageIndex.value,
              children: const [NewsPage(), FavoritePage(), StorePage(), ProfilePage()],
            ),
          ),
        ),
      ),
    );
  }
}
