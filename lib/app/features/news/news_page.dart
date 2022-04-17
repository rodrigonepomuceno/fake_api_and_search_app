import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:news_app/app/core/theme/extensions/size_screen_extension.dart';
import 'package:news_app/app/features/news/news_controller.dart';
import 'package:news_app/app/features/news/widgets/news_card.dart';
import 'package:news_app/app/features/news/widgets/search_bar.dart';
import 'package:news_app/app/features/news/widgets/types_list.dart';

class NewsPage extends GetView<NewsController> {
  const NewsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
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
          Padding(
            padding: const EdgeInsets.only(top: 27, bottom: 27, left: 23),
            child: TypesList(cards: controller.type),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: controller.filteredNewsList.length,
              itemBuilder: ((context, index) {
                var news = controller.filteredNewsList[index];
                return NewsCard(
                  onTap: () => controller.goToNewsDetail(news: news),
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
