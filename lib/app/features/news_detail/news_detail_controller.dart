import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/app/core/models/news_model.dart';

class NewsDetailController extends GetxController {
  final _news = NewsModel.empty().obs;
  ScrollController scrollController = ScrollController();
  @override
  void onInit() {
    super.onInit();
    _news.value = Get.arguments['news'];    
  }

  NewsModel get news => _news.value;
}
