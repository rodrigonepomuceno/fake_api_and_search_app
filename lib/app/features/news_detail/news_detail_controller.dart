import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/core/models/news_model.dart';
import 'package:news_app/app/core/repositories/link_launcher/link_launcher_repository_interface.dart';
import 'package:news_app/app/core/repositories/news_repository/news_repository_interface.dart';
import 'package:news_app/app/core/theme/extensions/size_screen_extension.dart';

class NewsDetailController extends GetxController {
  final NewsRepositoryInterface _repository;
  final _news = NewsModel.empty().obs;
  final _liked = false.obs;
  final _featured = false.obs;
  final _heightImage = 1.sh * 0.45;

  ScrollController scrollController = ScrollController();

  NewsDetailController({required NewsRepositoryInterface repository}) : _repository = repository;
  @override
  void onInit() {
    super.onInit();
    _news.value = Get.arguments['news'];
    _liked.value = _news.value.liked;
    _featured.value = _news.value.featured;
  }

  NewsModel get news => _news.value;
  bool get liked => _liked.value;
  bool get featured => _featured.value;
  double get heightImage => _heightImage;

  setLiked() {
    _news.value.liked = !_news.value.liked;
    _liked.value = news.liked;
    _repository.update(news);
  }

  setFeatured() {
    _news.value.featured = !_news.value.featured;
    _featured.value = news.featured;
    _repository.update(news);
  }

  shareLink() {
    Get.find<ILinkLauncherRepository>().launchLink(news.postImage);
  }
}
