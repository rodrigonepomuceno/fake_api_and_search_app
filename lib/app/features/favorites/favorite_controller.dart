import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/core/models/news_model.dart';
import 'package:news_app/app/core/repositories/news_repository/news_repository_interface.dart';

class FavoriteController extends GetxController {
  final NewsRepositoryInterface _repository;

  var filterFocused = false.obs;
  var searchText = ''.obs;
  var newsList = <NewsModel>[].obs;
  TextEditingController textSearchController = TextEditingController();

  FavoriteController({
    required NewsRepositoryInterface repository,
  }) : _repository = repository;

  @override
  void onInit() {
    super.onInit();
    fetchFavorites();
  }

  @override
  void onClose() {
    textSearchController.clear();
    super.onClose();
  }

  fetchFavorites() async {
    newsList.value = await _repository.getNews();
  }

  List<NewsModel> get filteredLikedNewsList {
    try {
      if (searchText.value.length >= 2) {
        return newsList
            .where(
              (element) => (element.author.name.toLowerCase().contains(searchText.value) || element.title.toLowerCase().contains(searchText.value)) && element.liked,
            )
            .toList();
      }
      return newsList
          .where(
            (element) => element.liked,
          )
          .toList();
    } catch (e) {
      return newsList;
    }
  }

  setSearchText(String text) {
    return searchText.value = text.toLowerCase();
  }

  clearSearchText() => searchText.value = '';

  filterFocusChange(bool focused) {
    filterFocused.value = focused;
  }
}
