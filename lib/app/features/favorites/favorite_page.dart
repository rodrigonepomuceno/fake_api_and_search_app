import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/app/core/theme/extensions/size_screen_extension.dart';
import 'package:news_app/app/core/widgets/app_text/app_text.dart';
import 'package:news_app/app/core/widgets/news_card/news_card.dart';
import 'package:news_app/app/core/widgets/search_bar/search_bar.dart';
import 'package:news_app/app/features/favorites/favorite_controller.dart';

class FavoritePage extends GetView<FavoriteController> {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 1.statusBarHeight),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 23),
            child: SearchBar(
              margin: const EdgeInsets.only(right: 12),
              hintText: 'Search',
              onChanged: controller.setSearchText,
              onTapClose: controller.clearSearchText,
              onChangeFocus: controller.filterFocusChange,
              textEditingController: controller.textSearchController,
            ),
          ),
          const SizedBox(height: 20),
          controller.filteredLikedNewsList.isEmpty
              ? Padding(
                  padding: EdgeInsets.only(top: 1.sh / 3),
                  child: Center(
                    child: AppText.bodyMedium('No results'),
                  ),
                )
              : Expanded(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: controller.filteredLikedNewsList.length,
                    itemBuilder: ((context, index) {
                      var news = controller.filteredLikedNewsList[index];
                      return NewsCard(
                        onTap: () {},
                        news: news,
                      );
                    }),
                  ),
                ),
        ],
      ),
    );
  }
}
