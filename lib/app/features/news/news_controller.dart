import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/core/models/news_model.dart';
import 'package:news_app/app/core/repositories/news_repository/news_repository_interface.dart';
import 'package:news_app/app/core/routes/app_pages.dart';
import 'package:news_app/app/features/news/widgets/type_cards.dart';

class NewsController extends GetxController {
  final NewsRepositoryInterface _repository;

  final type = <Widget>[].obs;
  var filterFocused = false.obs;
  var searchText = ''.obs;
  var newsList = <NewsModel>[].obs;
  TextEditingController textSearchController = TextEditingController();

  NewsController({
    required NewsRepositoryInterface repository,
  }) : _repository = repository;

  @override
  void onInit() {
    super.onInit();
    addTypes();
    fetchNews();
  }

  @override
  void onClose() {
    textSearchController.clear();
    super.onClose();
  }

  fetchNews() async {
    newsList.value = await _repository.getNews();
  }

  List<NewsModel> get filteredNewsList {
    try {
      if (searchText.value.length >= 2) {
        return newsList
            .where(
              (element) => element.author.name.toLowerCase().contains(searchText.value) || element.title.toLowerCase().contains(searchText.value),
            )
            .toList();
      }
      return newsList;
    } catch (e) {
      return newsList;
    }
  }

  void addTypes() {
    var list = <String>[];
    list.add('Art');
    list.add('Buy Now');
    list.add('Political News');
    list.add('Auction');
    list.add('Travels');
    list.add('Overall');

    for (var item in list) {
      type.add(TypeCards(
        title: item,
        onTap: () {},
        selected: item == 'Art',
      ));
    }
  }

  setSearchText(String text) {
    return searchText.value = text.toLowerCase();
  }

  clearSearchText() => searchText.value = '';

  filterFocusChange(bool focused) {
    filterFocused.value = focused;
  }

  goToNewsDetail({required NewsModel news}) {
    Get.toNamed(AppRoutes.newsDetail, arguments: {
      'news': news,
    });
  }
}
